## ✨ custom-resource-definition-sample ✨

This project shows you within `pkg` how to setup a custom resource definition without Kubebuilder/Operator-sdk. 🧙🏼

You can then create the client set by running the below command... 🧨

The dependency required here is `code-generator`
You can fetch this with `go get`

### Command...

```bash
❯ $GOPATH/src/k8s.io/code-generator/generate-groups.sh all pkg/client pkg/apis metadata:v1
Generating deepcopy funcs
Generating clientset for metadata:v1 at pkg/client/clientset
Generating listers for metadata:v1 at pkg/client/listers
Generating informers for metadata:v1 at pkg/client/informers
```