//--------------------------------------------------------------------
// Modules
# module "jx" {
#   source  = "app.terraform.io/jenkinsxio/jx/google"
#   gcp_project = "jenkins-x-labs-bdd"
# }
module "jx" {
  source = "github.com/rawlingsj/terraform-google-jx"
  gcp_project = "jenkins-x-labs-bdd"
  jenkins_x_pipeline_bot_username = var.jenkins_x_pipeline_bot_username
  jenkins_x_pipeline_bot_token    = var.jenkins_x_pipeline_bot_token
}

output "jx_requirements" {
  value = module.jx.jx_requirements
}
