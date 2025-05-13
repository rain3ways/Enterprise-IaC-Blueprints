terraform {
    backend "s3" {
        bucket = "rain3ways-enterprise-tfstate"
        key = "enterprise-webapp/dev/terraform.tfstate"
        region = "ap-southeast-1"
        encrypt = true
        dynamodb_table = "terraform-state-lock-iac-project"
    }
}