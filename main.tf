resource "jenkins_folder" "folders" {
  name = "infrastructure"
}

resource "jenkins_job" "job" {
    name = "roboshop"
    folder = jenkins_folder.folders.id
    template = templatefile("${path.module}/sb-job.xml", {
      description = "An example job created from terraform"
    })
}