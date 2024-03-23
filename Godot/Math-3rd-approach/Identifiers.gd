extends Resource

## User-defined identifiers (variables and functions)

var identifiers := {
	
}

func is_identifier( suspected_id: String ):
	return identifiers.has( suspected_id )
