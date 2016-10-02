# fis-java-openshift-jq

An example of how to add yum install items to the java openshift image.  On this image we have added jq which allows you to add it to liveness and readiness checks.


## Example Readiness

This one would check the pod to see whether a particular camel route has completed one exchange.

```
wget --no-cache --tries=1 --timeout=1 --ca-certificate=/var/run/secrets/kubernetes.io/serviceaccount/ca.crt --header=\"Authorization: Bearer $(cat /var/run/secrets/kubernetes.io/serviceaccount/token)\" -O- https://10.1.2.2:8443/api/v1/namespaces/$KUBERNETES_NAMESPACE/pods/https:$HOSTNAME:8778/proxy/jolokia/read/org.apache.camel:context=org.swinchester.camel,type=routes,name=%22bridgeInit%22/ExchangesCompleted  | jq .value==1 | grep true
```