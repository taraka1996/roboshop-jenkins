resource "jenkins_folder" "infra" {
  name = "infrastructure"
}

resource "jenkins_job" "jobs" {
    name = ""
    folder = jenk
}