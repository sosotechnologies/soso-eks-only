## Register A DoS account

https://login.dso.mil/auth/realms/baby-yoda/protocol/openid-connect/registrations?client_id=account&response_type=code       --> LOGIN VIA LOCAL DB

email: cafanwi@sosotechnologies.com
Login Uname: sosotechnologies
Login passwd: Ihad20$

## Links below: 
Big Bank Link: [where to get the charts](https://repo1.dso.mil/big-bang/bigbang) 
OR [click on the gitlaB icon](https://docs-bigbang.dso.mil/latest/docs/developer/package-integration/helm-standards/)

## Get the chart repos
- Click on charts --> Big Bank Link: [where to get the charts](https://repo1.dso.mil/big-bang/bigbang)
- click on the chart --> click on the values.yaml file --> [ctr+f] to find the repo of the application:
- Link: [values.yaml Link:](https://repo1.dso.mil/big-bang/bigbang/-/blob/master/chart/values.yaml)
- Then go put that repo in the url
- example, get the istio-system repo as such: [https://repo1.dso.mil/big-bang/product/packages/istio-system.git]

## After creating account, signout and login again
https://registry1.dso.mil/account/sign-in?redirect_url=%2Fharbor%2Fprojects    --> LOGIN VIA LOCAL DB

--> will require you to add a username for bigbank project. Mine, I added: sosotechnologies

## Go to your name, click on your profile and obtain a token CLI-secret:

CLI secret  cafanwii   --> zRdxM6Dy3YJCW22UzCuOERrsTJc4yzxJ 
CLI secret sosotechnologies  -->  SeqYhjqVqf8JF5jXcT8dFbVcZZdJEmeK

## clone the chart istio-operator then istio-controlplane chart

```sh
git clone  https://repo1.dso.mil/big-bang/product/packages/istio-operator.git
git clone https://repo1.dso.mil/big-bang/product/packages/istio-controlplane.git
```

## Create namespace istio-system 

```sh
kubectl create ns istio-operator
kubectl create ns istio-system 
```

## create a secret of your token-CLI secret

***HOTE:***  On this line --> kubectl -n istio-system create secret docker-registry private-registry , this name: [ private-registry ] signifies name of your [pull secret]

![pull secret](ironbank-sonar\pill-secret.png)

```sh
kubectl -n istio-system create secret docker-registry private-registry \
  --docker-server=registry1.dso.mil \
  --docker-username=sosotechnologies \
  --docker-password=SeqYhjqVqf8JF5jXcT8dFbVcZZdJEmeK \
  --docker-email=cafanwi@sosotechnologies.com \
  --dry-run=client -o yaml > private-registry.yaml
```

## edit the values.yaml file 
Update the pull-secret with created registry value

## nexT: Cd into the chart and install helm

```sh
cd istio-controlplane/chart
helm install istio-base istio/base -n istio-system
helm install istio-controlplane -n istio-system 

```

https://repo1.dso.mil/big-bang/bigbang
https://kubernetes.io/docs/reference/netwo
