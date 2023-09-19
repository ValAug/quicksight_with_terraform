<!-- retro visitor counter -->
<p align="center"> 
  <img src="https://profile-counter.glitch.me/quicksight_with_terraform/count.svg" />
</p>

# quicksight_with_terraform

<p align="center">
<h2><span style="color: #2B98F0;">Enterprise Quicksight Dashboard Deployment</span></h2>
</p>

![quicksight](https://github.com/ValAug/quicksight_with_terraform/blob/main/QS-DIAGRAM.png)

<p align="center">
  <img src="https://img.shields.io/badge/-AWS-000000?style=flat&logo=Amazon%20AWS&logoColor=FF9900" alt="AWS">
  <img src="https://img.shields.io/badge/-Terraform-000000?style=flat&logo=Terraform" alt="Terraform">
</p>

This GitHub repository highlights the prowess of Amazon QuickSight – your gateway to seamless data analysis and visualization within the AWS ecosystem using Terraform

## 🔑 Key Features

- **Infrastructure as Code:** Define your AWS infrastructure declaratively using Terraform configurations, enabling easy versioning, management, and environment reproducibility.

- **Quicksight:** Amazon QuickSight is a robust data analysis and visualization tool designed to streamline data exploration and decision-making.


## ⚡️ Prerequisites

- **To create this QuickSight dashboard using API you must have an enterprise user/users**
- dashboard_id
- name
- version_description

## ⚠️ Cautions

- As an AWS best practice, grant this code the least privilege, providing only the necessary permissions to perform a task. For more information, see [Grant Least Privilege](https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html#grant-least-privilege) in the *AWS Identity and Access Management User Guide*.
- This code has been tested in the __us-east-1__ AWS Region only. However, it should work in any other region.
- Running this code may result in charges to your AWS account.

## ▶️ How to Run This Code

## 🚀 Quick Start

```bash
cd quicksight_with_terraform
terraform init
terraform validate
terraform plan
terraform apply --auto-approve
```

## 💥 Quick Destroy
```bash
terraform destroy --auto-approve
```

## 📌 Notes
```bash
- clone this Git repo
- cd to the directory quicksight_with_terraform
- use terraform __init__ command to initialize the Terraform working directory and to download plugins for a provider (aws)
- terraform validate command will validate the code before the actual deployment
- terraform plan command will show the execution code before making the actual deployment
- terraform apply
- Alternate command: terraform apply -auto-approve
- terraform destroy
- Alternate command: terraform destroy -auto-approve
- terraform fmt -recursive # A way to format the terraform code
