<cfscript>
// Set the admin password
password = url.password ?: "testpass123";
try {
	admin = new Administrator( "server", "" );
	admin.updatePassword( password );
	writeOutput( "Password set successfully to: #password#" );
} catch ( any e ) {
	writeOutput( "Failed to set password: #e.message#" );
	header statusCode=500;
}
</cfscript>
