for i in  artifactory-etc artifactory-backup artifactory-data artifactory-logs artifactory-postgres artifactory-var; do oc delete pv $i;done
