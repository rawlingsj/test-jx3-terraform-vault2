//--------------------------------------------------------------------
// Modules
module "jx" {
  source = "github.com/rawlingsj/terraform-google-jx2"
  gcp_project = "jenkins-x-labs-bdd"
  jx2 = false
}

output "connect" {
  description = "Connect to cluster"
  value       = "connect to your new cluster using `gcloud container clusters get-credentials ${module.jx.cluster_name} --zone ${module.jx.cluster_location} --project ${module.jx.gcp_project} && jx ns ${module.jx.jenkins_x_namespace}`"
}

output "follow" {
  description = "Follow instructions to enable Jenkins X install via GitOps"
  value       = "http://jenkins-x.io"
}
