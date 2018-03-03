for i in  pvetc.yaml pvbackup.yaml  pvdata.yaml  pvlogs.yaml  pvpostgres.yaml  pvvar.yaml; do oc create -f $i;done
