# helm operator
helm repo add fluxcd https://charts.fluxcd.io

kubectl apply -f https://raw.githubusercontent.com/fluxcd/helm-operator/1.0.0/deploy/crds.yaml

helm upgrade -i helm-operator fluxcd/helm-operator `
    --set helm.versions=v3


# flux installation
kubectl create ns flux

$GHUSER=$args[0]
$REPO=$args[1]

fluxctl install `
--git-user=$GHUSER `
--git-email=$GHUSER@users.noreply.github.com `
--git-url=git@github.com:$GHUSER/$REPO `
--git-path=config `
--namespace=flux | kubectl apply -f -