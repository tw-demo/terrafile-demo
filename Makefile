clean:
	rm -rf .terraform*  vendor

prod: clean
	terrafile -f env-prod/Terrafile
	terraform init -backend-config=env-prod/state.tfvars
	terraform apply -auto-approve -var-file=env-prod/main.tfvars

dev: clean
	terrafile -f env-dev/Terrafile
	terraform init -backend-config=env-dev/state.tfvars
	terraform apply -auto-approve -var-file=env-dev/main.tfvars
