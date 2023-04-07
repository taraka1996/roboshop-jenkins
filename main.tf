resource "jenkins_folder" "infra" {
  name = "infrastructure"
}

resource "jenkins_job" "jobs" {
    name = "roboshop"
    folder = jenkins_folder.folders.id
    template = templatefile("${path.module}/sb-job.xml", {
        description = "An example job created from terraform"
    })
}