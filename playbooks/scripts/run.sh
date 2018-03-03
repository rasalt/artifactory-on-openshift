oc new-project artifactory
oc project artifactory
oc create serviceaccount artifactory
oc adm policy add-scc-to-user anyuid -z artifactory


oc create -f ../../artifactory.yaml
oc create -f ../../reverse-proxy.yaml 
oc create imagestream s2i-nginx-acme
cd .. /.. && oc create configmap artifactory-default-config --from-file=etc-opt-jfrog-artifactory-dist/
cd playbooks/scripts

for i in pvbackup.yaml  pvdata.yaml  pvetc.yaml  pvlogs.yaml  pvpostgres.yaml  pvvar.yaml ; do oc create -f $i;done
oc new-app --template=artifactory 

