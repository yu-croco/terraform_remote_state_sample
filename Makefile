.PHONY: init
define terraform-setup
	tfenv install min-required && terraform init
endef

init:
	cd ./main/iam && $(terraform-setup)

.PHONY: iam/plan
iam/plan:
	cd ./main/iam && \
	terraform plan

.PHONY: iam/apply
iam/apply:
	cd ./main/iam && \
	terraform apply
