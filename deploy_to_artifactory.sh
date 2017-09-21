# keep original settings.xml so we can restore it later
cp settings.xml /tmp

# run creds script
./datahighwaycreds.sh

# run mvn command
mvn clean && mvn deploy --settings settings.xml

# delete settings.xml with creds in it
rm settings.xml

mv /tmp/settings.xml .
