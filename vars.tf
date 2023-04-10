variable "folders" {
  default = ["Infra", "CI-Pipeline"]
}

variable "jobs" {
  default = [
    { name = "roboshop", folder = "Infra", repo_url = "https://github.com/sriharitirumala/roboshop-Ci-pipeline" },
    { name = "frontend", folder = "Ci-pipeline", repo_url = "https://github.com/sriharitirumala/roboshop-Ci-pipeline" },
    { name = "cart", folder = "Ci-pipeline", repo_url = "https://github.com/sriharitirumala/roboshop-Ci-pipeline" },
    { name = "catalogue", folder = "Ci-pipeline", repo_url = "https://github.com/sriharitirumala/roboshop-Ci-pipeline" },
    { name = "user", folder = "Ci-pipeline", repo_url = "https://github.com/sriharitirumala/roboshop-Ci-pipeline" },
    { name = "shipping", folder = "Ci-pipeline", repo_url = "https://github.com/sriharitirumala/roboshop-Ci-pipeline" },
    { name = "payment", folder = "Ci-pipeline", repo_url = "https://github.com/sriharitirumala/roboshop-Ci-pipeline" },
    
  ]
}    