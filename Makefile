apply:
	kubectl create namespace istio-project-ns --dry-run=client
	kubectl label namespace istio-project-ns istio-injection=enabled --overwrite
	kubectl apply -f kube/api-deployment.yaml -n istio-project-ns
	kubectl apply -f kube/api-service.yaml -n istio-project-ns
	kubectl apply -f kube/front-deployment.yaml -n istio-project-ns
	kubectl apply -f kube/front-service.yaml -n istio-project-ns
	kubectl apply -f kube/api-virtual-service.yaml -n istio-project-ns
	kubectl apply -f kube/front-virtual-service.yaml -n istio-project-ns
	kubectl apply -f kube/service-entry-minerstat.yaml -n istio-project-ns
	kubectl apply -f kube/ingress.yaml -n istio-project-ns
	kubectl apply -f kube/egress.yaml -n istio-project-ns
delete:
	kubectl delete -f kube/api-virtual-service.yaml -n istio-project-ns
	kubectl delete -f kube/front-virtual-service.yaml -n istio-project-ns
	kubectl delete -f kube/service-entry-minerstat.yaml -n istio-project-ns
	kubectl delete -f kube/ingress.yaml -n istio-project-ns
	kubectl delete -f kube/egress.yaml -n istio-project-ns
	kubectl delete -f kube/front-service.yaml -n istio-project-ns
	kubectl delete -f kube/front-deployment.yaml -n istio-project-ns
	kubectl delete -f kube/api-service.yaml -n istio-project-ns
	kubectl delete -f kube/api-deployment.yaml -n istio-project-ns