kubectl create ns flux

$GHUSER=$args[0]
$REPO=$args[1]

fluxctl install `
--git-user=$GHUSER `
--git-email=$GHUSER@users.noreply.github.com `
--git-url=git@github.com:$GHUSER/$REPO `
--git-path=config `
--namespace=flux | kubectl apply -f -