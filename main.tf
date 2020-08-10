//--------------------------------------------------------------------
// Modules
module "jx" {
  source  = "app.terraform.io/jenkinsxio/jx/google"
  version = "1.7.0"

  gcp_project = "jenkins-x-labs-bdd"
}

output "jx_requirements" {
  value = module.jx.jx_requirements
}
