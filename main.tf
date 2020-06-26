provider "aws" {
  profile                 = "rjay"
  region                  = var.region
  shared_credentials_file = "~/.aws/credentials"
}

terraform{
    backend "s3"{
        bucket          = "ddl-jerkins"
        key             = "terraform.tfstate"
        region          = "us-east-1"
    }
}

module "network" {
    source = "./modules/network"
    
}

module "compute"{
    source = "./modules/compute"
    pub_sub_ids = module.network.pub_sub_ids
}