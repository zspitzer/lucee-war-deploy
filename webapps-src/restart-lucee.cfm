<cfscript>
// Trigger Lucee internal restart (same as admin restart button)
admin = new Administrator( "server", "testpass123" );
admin.restart();
writeOutput( "Lucee restart triggered" );
</cfscript>
