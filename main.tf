resource "jenkins_folder" "folders" {
  name =  "infrastructure"
}

resource "jenkins_job" "job" {
  name     = example
  folder   = jenkins_folders.folder.id
  template = templatefile("${path.module}/sb-job.xml", {
    description = "An example job" 
  })
}  

  