## ✨ custom-resource-definition-sample ✨

This project shows you within `pkg` how to setup a custom resource definition without Kubebuilder/Operator-sdk. 🧙🏼

You can then create the client set by running the below command... 🧨

1. For simplicity put your project on the $GOPATH ( Due to the generator not supporting modules )

2. The dependencies required are:
- `go get k8s.io/code-generator`
- `go get k8s.io/apimachinery`

3. Run the following...
```bash
# Putting the full module path is important as this gets dumped out on the $GOPATH
❯ $GOPATH/src/k8s.io/code-generator/generate-groups.sh all github.com/AlexsJones/custom-resource-definition-example/pkg/client github.com/AlexsJones/custom-resource-definition-example/pkg/apis metadata:v1 -v10
Generating deepcopy funcs
Generating clientset for metadata:v1 at pkg/client/clientset
Generating listers for metadata:v1 at pkg/client/listers
Generating informers for metadata:v1 at pkg/client/informers
```
4. Observe the newly generated files in `pkg/client`