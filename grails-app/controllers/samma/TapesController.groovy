

package samma

import java.util.Calendar;
import java.util.Date;
import java.util.regex.*;
import java.sql.Date;

import grails.converters.XML


class TapesController {
    TestimonyService ts = new TestimonyService()
    
    def index = {
		flash.message = "Default Scaffolding" 
		redirect(action : currentDay )
		}
	
	def scaffold = true
	
	def search = {}
	
	def results = {
		def tapes = Tapes.findAllByMigratedDateLike(params.migratedDate)
		return [ tapes : tapes, term : params.migratedDate]
		}
	
	def failure = {

		def t = Calendar.getInstance()
		def reportTime = (t.get(Calendar.YEAR)
			+ "-" + (t.get(Calendar.MONTH) +1)
			+ "-" + t.get(Calendar.DAY_OF_MONTH)
			+ " " + t.get(Calendar.HOUR_OF_DAY)
			+ ":" + t.get(Calendar.MINUTE)
			);
		
		def t2 = Tapes.createCriteria()
		def tapeFailure = t2.list(sort: 'migratedDate', order: 'asc') {
			like('migratedResult', "FAILED")
		}
		
		[fail : tapeFailure, now : reportTime]
	}
	
	def currentWeek  = {
		
		def fridaySQL
		def mondaySQL
		def calendar = Calendar.getInstance();
		def todayDate = new java.sql.Date(calendar.getTime().getTime());
		def dayOfWeek = calendar.get(Calendar.DAY_OF_WEEK);
		
                def tCount = Tapes.findAllByMigratedResult("SUCCESS");
		def tNumber = tCount.size();
                
                if (dayOfWeek == 7) {
			fridaySQL = todayDate.minus(1);
			mondaySQL = fridaySQL.minus(5);
		}
		else {
			def diff = 6 - dayOfWeek
			fridaySQL = todayDate.plus(diff);
			mondaySQL = fridaySQL.minus(4);
		}
		
		def tapeListFriday = Tapes.createCriteria()
		def friday = tapeListFriday.list(sort: 'migratedDate', order: 'asc') {
			between("migratedDate", fridaySQL, fridaySQL.plus(1))
		}
		def friCount = Tapes.countByMigratedDateBetween(fridaySQL, fridaySQL.plus(1))
		def friSuccessCount = Tapes.countByMigratedResultAndMigratedDateBetween("SUCCESS", fridaySQL, fridaySQL.plus(1))
		
		
		def tapeListThursday = Tapes.createCriteria()
		def thursday =  tapeListThursday.list(sort: 'migratedDate', order: 'asc') {
			between ("migratedDate", fridaySQL.minus(1), fridaySQL)
		}
		def thurCount = Tapes.countByMigratedDateBetween(fridaySQL.minus(1), fridaySQL)
		def thurSuccessCount = Tapes.countByMigratedResultAndMigratedDateBetween("SUCCESS", fridaySQL.minus(1), fridaySQL)
		
		
		def tapeListWednesday = Tapes.createCriteria()
		def wednesday =  tapeListWednesday.list(sort: 'migratedDate', order: 'asc') {
			between ("migratedDate", fridaySQL.minus(2), fridaySQL.minus(1))
		}
		def wedCount = Tapes.countByMigratedDateBetween(fridaySQL.minus(2), fridaySQL.minus(1))
		def wedSuccessCount = Tapes.countByMigratedResultAndMigratedDateBetween("SUCCESS", fridaySQL.minus(2), fridaySQL.minus(1))
		
		
		def tapeListTuesday = Tapes.createCriteria()
		def tuesday =  tapeListTuesday.list(sort: 'migratedDate', order: 'asc') {
			between ("migratedDate", fridaySQL.minus(3), fridaySQL.minus(2))
		}
		def tueCount = Tapes.countByMigratedDateBetween(fridaySQL.minus(3), fridaySQL.minus(2))
		def tueSuccessCount = Tapes.countByMigratedResultAndMigratedDateBetween("SUCCESS", fridaySQL.minus(3), fridaySQL.minus(2))
		
		
		def tapeListMonday = Tapes.createCriteria()
		def monday =  tapeListMonday.list(sort: 'migratedDate', order: 'asc') {
			between ("migratedDate", fridaySQL.minus(4), fridaySQL.minus(3))
		}
		def monCount = Tapes.countByMigratedDateBetween(fridaySQL.minus(4), fridaySQL.minus(3))
		def monSuccessCount = Tapes.countByMigratedResultAndMigratedDateBetween("SUCCESS", fridaySQL.minus(4), fridaySQL.minus(3))
		
                
                HashSet<String> cols = new HashSet<String>()

                Pattern p = Pattern.compile("mssa_hvt_\\d{1,4}");
                
                def sammaResults = Tapes.getAll();
                sammaResults.each{
                    Matcher m = p.matcher(it.tapeId)
                    if(m.find() && it.migratedResult.equals("SUCCESS")){
                        cols.add(m.group())
                        
                    }
                }
                
                System.out.println(cols.size());
                def counts = ts.counts();
                
                def uniqueTapes = new HashMap<String, Integer>()
                def tapes = Tapes.findAllByMigratedResult("SUCCESS");
                tapes.each{
                    uniqueTapes.putAt(it.tapeId, it.migratedDuration)
                }
            
                def totaltime = 0
            
                uniqueTapes.each{
                    totaltime += it.getValue()
                }

		[	
			today: todayDate, 
			
			fridayMigration : friday,
			fridayMigrationCount : friCount,
			fridayMigrationSuccessCount : friSuccessCount,
			fridayDate : fridaySQL,
			
			thursdayMigration : thursday,
			thursdayMigrationCount : thurCount,
			thursdayMigrationSuccessCount : thurSuccessCount,
			thursdayDate : fridaySQL.minus(1),
			
			wednesdayMigration : wednesday,
			wednesdayMigrationCount : wedCount,
			wednesdayMigrationSuccessCount : wedSuccessCount,
			wednesdayDate : fridaySQL.minus(2),
			
			tuesdayMigration : tuesday,
			tuesdayMigrationCount : tueCount,
			tuesdayMigrationSuccessCount : tueSuccessCount,
			tuesdayDate : fridaySQL.minus(3),
			
			mondayMigration : monday,
			mondayMigrationCount : monCount,
			mondayMigrationSuccessCount : monSuccessCount,
			mondayDate : fridaySQL.minus(4),
			
			spanBegin : mondaySQL,
			spanEnd : fridaySQL,
			
			previousSpanBegin : mondaySQL.minus(7),
			previousSpanEnd : fridaySQL.minus(7),
			
			nextSpanBegin : mondaySQL.plus(7),
			nextSpanEnd : fridaySQL.plus(7),
                        success: tNumber,
                        incomplete: counts[1].size(),
                        completeCount: counts[0].size() - counts[1].size(),
                        totalHours: (Integer) ((totaltime / 60) / 60)
		]

	}
	
	def week = {
                def tCount = Tapes.findAllByMigratedResult("SUCCESS");
		def tNumber = tCount.size();
		def calendar = Calendar.getInstance();
		def todayDate = new java.sql.Date(calendar.getTime().getTime());
		def dateIn = params.date
		def fridaySQL = java.sql.Date.valueOf(dateIn.toString())
		
		def tapeListFriday = Tapes.createCriteria()
		def friday = tapeListFriday.list(sort: 'migratedDate', order: 'asc') {
			between("migratedDate", fridaySQL, fridaySQL.plus(1))
		}
		def friCount = Tapes.countByMigratedDateBetween(fridaySQL, fridaySQL.plus(1))
		def friSuccessCount = Tapes.countByMigratedResultAndMigratedDateBetween("SUCCESS", fridaySQL, fridaySQL.plus(1))
		
		def tapeListThursday = Tapes.createCriteria()
		def thursday =  tapeListThursday.list(sort: 'migratedDate', order: 'asc') {
			between ("migratedDate", fridaySQL.minus(1), fridaySQL)
		}
		def thurCount = Tapes.countByMigratedDateBetween(fridaySQL.minus(1), fridaySQL)
		def thurSuccessCount = Tapes.countByMigratedResultAndMigratedDateBetween("SUCCESS", fridaySQL.minus(1), fridaySQL)
		
		
		def tapeListWednesday = Tapes.createCriteria()
		def wednesday =  tapeListWednesday.list(sort: 'migratedDate', order: 'asc') {
			between ("migratedDate", fridaySQL.minus(2), fridaySQL.minus(1))
		}
		def wedCount = Tapes.countByMigratedDateBetween(fridaySQL.minus(2), fridaySQL.minus(1))
		def wedSuccessCount = Tapes.countByMigratedResultAndMigratedDateBetween("SUCCESS", fridaySQL.minus(2), fridaySQL.minus(1))
		
		
		def tapeListTuesday = Tapes.createCriteria()
		def tuesday =  tapeListTuesday.list(sort: 'migratedDate', order: 'asc') {
			between ("migratedDate", fridaySQL.minus(3), fridaySQL.minus(2))
		}
		def tueCount = Tapes.countByMigratedDateBetween(fridaySQL.minus(3), fridaySQL.minus(2))
		def tueSuccessCount = Tapes.countByMigratedResultAndMigratedDateBetween("SUCCESS", fridaySQL.minus(3), fridaySQL.minus(2))
		
		
		def tapeListMonday = Tapes.createCriteria()
		def monday =  tapeListMonday.list(sort: 'migratedDate', order: 'asc') {
			between ("migratedDate", fridaySQL.minus(4), fridaySQL.minus(3))
		}
		def monCount = Tapes.countByMigratedDateBetween(fridaySQL.minus(4), fridaySQL.minus(3))
		def monSuccessCount = Tapes.countByMigratedResultAndMigratedDateBetween("SUCCESS", fridaySQL.minus(4), fridaySQL.minus(3))

                def counts = ts.counts()
                
		[
			today: todayDate,
			
			fridayMigration : friday,
			fridayMigrationCount : friCount,
			fridayMigrationSuccessCount : friSuccessCount,
			fridayDate : fridaySQL,
			
			thursdayMigration : thursday,
			thursdayMigrationCount : thurCount,
			thursdayMigrationSuccessCount : thurSuccessCount,
			thursdayDate : fridaySQL.minus(1),
			
			wednesdayMigration : wednesday,
			wednesdayMigrationCount : wedCount,
			wednesdayMigrationSuccessCount : wedSuccessCount,
			wednesdayDate : fridaySQL.minus(2),
			
			tuesdayMigration : tuesday,
			tuesdayMigrationCount : tueCount,
			tuesdayMigrationSuccessCount : tueSuccessCount,
			tuesdayDate : fridaySQL.minus(3),
			
			mondayMigration : monday,
			mondayMigrationCount : monCount,
			mondayMigrationSuccessCount : monSuccessCount,
			mondayDate : fridaySQL.minus(4),
			
			spanBegin : fridaySQL.minus(4),
			spanEnd : fridaySQL,
			
			previousSpanBegin : fridaySQL.minus(11),
			previousSpanEnd : fridaySQL.minus(7),
			
			nextSpanBegin : fridaySQL.plus(3),
			nextSpanEnd : fridaySQL.plus(7),
                        
                        success: tNumber,
                        incomplete: counts[1].size(),
                        completeCount: counts[0].size() - counts[1].size()
		]
		
	}
        
        def incomplete = {
            def incomplete = ts.counts()[1]
            [incomplete: incomplete]
        }
        
        def time = {
            def uniqueTapes = new HashMap<String, Integer>()
            def tapes = Tapes.findAllByMigratedResult("SUCCESS");
            tapes.each{
                uniqueTapes.putAt(it.tapeId, it.migratedDuration)
            }
            
            def totaltime = 0
            
            uniqueTapes.each{
                totaltime += it.getValue()
            }
            
            render totaltime / 60
        }
        
    def getTitle = {
        def title = Tapes.get(params.id)
        render title as XML
    }
}