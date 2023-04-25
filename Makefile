apply:
	kubectl create namespace istio-project-ns
	kubectl label namespace istio-project-ns istio-injection=enabled --overwrite
	kubectl apply -f kube/api-deployment.yaml -n istio-project-ns
	kubectl apply -f kube/api-service.yaml -n istio-project-ns
	kubectl apply -f kube/front-deployment.yaml -n istio-project-ns
	kubectl apply -f kube/front-service.yaml -n istio-project-ns
delete:
	kubectl delete -f kube/front-service.yaml -n istio-project-ns
	kubectl delete -f kube/front-deployment.yaml -n istio-project-ns
	kubectl delete -f kube/api-service.yaml -n istio-project-ns
	kubectl delete -f kube/api-deployment.yaml -n istio-project-ns