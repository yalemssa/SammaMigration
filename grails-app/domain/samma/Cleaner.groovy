package samma

class Cleaner {
	String id
	String tapeId
	Date cleanedDate
	boolean cleanedResult
	int qualityFactor
	 
    static constraints = {
    }
	
	static mapping = {
		table "`CleanedResults`"
		version false
		columns {
			
			id column : "umid", type: String
			tapeId column : "tapeid"
			cleanedDate column : "cleaned_date"
			cleanedResult column : "cleaned"
			qualityFactor column : "quality_factor"

	
		}
	}
}
