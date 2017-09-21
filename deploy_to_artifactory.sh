# keep original settings.xml so we can restore it later
cp settings.xml /tmp

# run creds script
./datahighwaycreds.sh

# run mvn command
mvn clean && mvn deploy -DaltDeploymentRepository=artifactory-releases::default::http://artifactory.vertigo.stitchfix.com/artifactory/releases -DaltReleaseDeploymentRepository=artifactory-releases::default::http://artifactory.vertigo.stitchfix.com/artifactory/releases -DaltSnapshotDeploymentRepository=artifactory-snapshots::default::http://artifactory.vertigo.stitchfix.com/artifactory/snapshots --settings settings.xml 

# delete settings.xml with creds in it
rm settings.xml

mv /tmp/settings.xml .
