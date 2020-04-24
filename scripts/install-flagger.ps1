helm repo add flagger https://flagger.app

kubectl apply -f https://raw.githubusercontent.com/weaveworks/flagger/master/artifacts/flagger/crd.yaml

helm upgrade -i flagger flagger/flagger `
--namespace=linkerd `
--set crd.create=false `
--set meshProvider=linkerd `
--set metricsServer=http://linkerd-prometheus.linkerd.svc.cluster.local:9090

