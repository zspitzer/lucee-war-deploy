<cfscript>
// Check if password is still set
try {
	admin = new Administrator( "server", "testpass123" );
	writeOutput( "SUCCESS: Password persisted after restart" );
} catch ( any e ) {
	try {
		admin = new Administrator( "server", "" );
		writeOutput( "FAIL: Password was WIPED - admin accessible with empty password!" );
		header statusCode=500;
	} catch ( any e2 ) {
		rethrow;
	}
}
</cfscript>
