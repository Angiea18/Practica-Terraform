terraform {
    //Proveedor aws
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 5.0"
        }
    }

    // Version terraform
    required_version = ">= 1.2.0"
}

//Proveedor aws configuración
provider "aws" {
    region = "us-east-1"
}