package samma
import java.util.regex.Pattern
import java.util.regex.Matcher
import grails.converters.XML

class TestimoniesController {

    def index = { 
        def testimonies  = Tapes.findAllByMigratedResult("SUCCESS");
        //render testimonies.size()
        //render "<br />"
        
        Pattern p = Pattern.compile("mssa_hvt_\\d{1,4}");
        Pattern p2 = Pattern.compile("of")
        
        HashMap<String, HashSet<String>> testSet = new HashMap<String, HashSet<String>>()
        
        testimonies.each{
            Matcher m = p.matcher(it.tapeId)
            if(m.find())
            testSet.putAt(m.group(), new java.util.HashSet<String>())
            
        }  
        
        testimonies.each{
            Matcher m = p.matcher(it.tapeId)
            if(m.find()) {
                String s = m.group()
                def hvt = testSet.getAt(s).add(it.tapeId)
            }           
        }
        
        def incomplete = []

        testSet.each{
            
            Iterator i = it.getValue().iterator()
            def input = i.next()
            Matcher m = p2.matcher(input)
            def s
            if(m.find())
               s = input.substring(m.end())
            
            if(it.getValue().size() != Integer.parseInt(s)) {
                def map = [
                    "hvt": it.getKey(),
                    "parts": s,
                    "count":  it.getValue().size()
                ]
                
                incomplete.add(map)
            }
        }

        [incomplete: incomplete]
    }
}
    
