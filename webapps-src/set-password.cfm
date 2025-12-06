<cfscript>
// Set the admin password
password = url.password ?: "testpass123";
admin = new Administrator( "server", "" );
admin.updatePassword( newPassword=password );
writeOutput( "Password set successfully to: #password#" );
</cfscript>
