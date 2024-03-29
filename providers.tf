terraform {
  required_version = ">= 1.3.6"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.48"
    }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.37"
    }
  }
}

provider "aws" {
  alias  = "region_1"
  region = var.aws_vpc_configuration_data[0].region
}

provider "aws" {
  alias  = "region_2"
  region = var.aws_vpc_configuration_data[1].region
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
}

