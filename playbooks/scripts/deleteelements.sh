for i in artifactory-postgresql artifactory-backup-artifactory-0 artifactory-data-artifactory-0 artifactory-logs-artifactory-0 artifactory-var-artifactory-0 ; do oc delete pvc $i;done

oc delete svc artifactory
oc delete svc artifactory-postgresql
oc delete dc artifactory-postgresql
oc delete statefulsets artifactory
oc delete route artifactory
