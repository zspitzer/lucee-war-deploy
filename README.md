# Lucee WAR Deployment Test

Tests for config persistence issues reported in https://dev.lucee.org/t/lucee-6-2-1-122-not-saving-setting-and-red-500-on-restart/15101

## Issue

Users report that Lucee 6.2.1.122+ wipes settings and admin password on restart.

## Test Matrix

- `6.2.0.321` - Known good version
- `6.2.1.122` - Reported problematic version
- `6.2.4.21-RC` - Latest RC to check if fixed

## wars

https://cdn.lucee.org/lucee-6.2.1.122.war
https://cdn.lucee.org/lucee-6.2.0.321.war
https://cdn.lucee.org/lucee-6.2.4.21-RC.war

but they all have the same war structure, so i think bug is in lucee.jar

## What's Tested

1. Deploy Lucee WAR to Tomcat
2. Set admin password via Administrator API
3. Restart Tomcat
4. Verify password persists after restart

## Tomcat

This is the Lucee express template, used for jar deploys

https://cdn.lucee.org/express-templates/lucee-tomcat-10.1.48-template.zip

But for testing WAR files, it should use the generic tomcat 

https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.48/bin/apache-tomcat-10.1.48.tar.gz


## Running

Push to trigger, or use workflow_dispatch to test specific versions.
