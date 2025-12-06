<cfscript>
// Check if config is intact
try {
	admin = new Administrator( "server", "testpass123" );
	writeOutput( "Config OK - Admin password is set and working" );
} catch ( any e ) {
	admin = new Administrator( "server", "" );
	writeOutput( "WARNING: Admin password was RESET to empty!" );
	header statusCode=500;
}
</cfscript>
