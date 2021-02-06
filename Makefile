.PHONY: init
define terraform-setup
	tfenv install min-required && terraform init
endef

init:
	cd ./main/s3 && $(terraform-setup) && terraform apply -auto-approve
	cd ./main/iam && $(terraform-setup)
	cd ./main/iam2 && $(terraform-setup)

.PHONY: iam/plan
iam/plan:
	cd ./main/iam && \
	terraform plan

.PHONY: iam/apply
iam/apply:
	cd ./main/iam && \
	terraform apply

.PHONY: iam/destroy
iam/destroy:
	cd ./main/iam && \
	terraform destroy

.PHONY: iam2/plan
iam2/plan:
	cd ./main/iam2 && \
	terraform plan

.PHONY: iam2/apply
iam2/apply:
	cd ./main/iam2 && \
	terraform apply

.PHONY: iam2/destroy
iam2/destroy:
	cd ./main/iam2 && \
	terraform destroy

.Phony: s3/plan
s3/plan:
	cd ./main/s3 && \
	terraform plan

.Phony: s3/apply
s3/apply:
	cd ./main/s3 && \
	terraform apply

.Phony: s3/destroy
s3/destroy:
	cd ./main/s3 && \
	terraform destroy

.PHONY: fmt
terraform_fmt:
	terraform fmt -recursive
