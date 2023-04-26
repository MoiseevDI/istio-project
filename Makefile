apply:
	kubectl create namespace istio-project-ns --dry-run=client
	kubectl label namespace istio-project-ns istio-injection=enabled --overwrite
	kubectl apply -f kube/ --recursive -n istio-project-ns
delete:
	kubectl delete -f kube/ --recursive -n istio-project-ns
