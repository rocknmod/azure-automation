terraform {
  backend "local" {
    path          = "/home/vagrant/AWS/terraform-backend/terraform.tfstate"
    workspace_dir = "/home/vagrant/AWS/terraform-backend/terraform.tfstate.d"
  }
}
