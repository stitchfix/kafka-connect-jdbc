#!/bin/bash

# Prepare a credentials file so we can publish to artifactory.
# For now making a call and updating the gradle properties with
# the right value.

CURRENT_RESULT=$(curl http://vault.vertigo.stitchfix.com/secure/flotilla-auto)
sed  "s|\(<password>\)[^<>]*\(</password>\)|\1${CURRENT_RESULT}\2|" settings.xml > settings2.xml
mv settings2.xml settings.xml
echo "Credentials file saved"
