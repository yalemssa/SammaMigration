package samma

class Tapes {

	String id
	String tapeId
	Date migratedDate
	String migratedResult
	String author
	String outputFilename
	String location
	int migratedDuration
	
	
    static constraints = {
    }
	
	static mapping = {
		table "`Tapes`"
		version false
		columns {
			
			id column : "umid", type: String 
			tapeId column : "tapeid"
			migratedDate column : "migrated_date"
			migratedResult column : "migrated_result"
			author column : "author"
			outputFilename column: "output_filename"
			location column : "location"
			migratedDuration column : "migrated_duration"
	
		}
	}
}


/*
 * 
 * 		
 * 
			
	Boolean migrated
	String migratedResult
	Date migratedDate
	String author
	String migratedBy
	String videoStandard
	String migrationProfile
	Boolean passedInspection
	Boolean cleaned
	String cleanedResult
	Date cleanedDate
	String outputFilename
	String location
	String comments
	String tapeIdSequence
	String migratedLog
	String migratedDevices
	int migratedDuration
	int tapeTypeId
	Date timeIn
	String tapeFormat
	String description
	
	
			migrated column : "migrated"
			migratedResult column : "migrated_result"
			migratedDate column : "migrated_date"
			migratedBy column : "migrated_by"
			videoStandard column : "video_standard"
			migrationProfile column : "migration_profile"
			author column : "author"
			passedInspection column : "passed_inspection"
			cleaned column : "cleaned"
			cleanedResult column : "cleaned_result"
			cleanedDate column : "cleaned_date"
			outputFilename column: "output_filename"
			location column : "location"
			description column : "description"
			comments column : "comments"
			tapeIdSequence column : "tapeid_sequence" 
			migratedLog column : "migrated_log"
			migratedDevices column : "migrated_devices"
			migratedDuration column : "migrated_duration"
			tapeTypeId column : "tapetypeid"
			timeIn column : "timein"
			tapeFormat column : "tape_format"
			

  description text,
  comments text,
  tapeid_sequence text,
  migrated_log text,
  migrated_devices text,
  migrated_duration integer DEFAULT 0,
  stocklength integer,
  tapetypeid integer,
  prep_operator text,
  timein timestamp without time zone DEFAULT timezone('UTC'::text, now()),
  tape_format text,
  */
