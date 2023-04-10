variable "folders" {
  default = ["Infra", "CI-Pipeline"]
}

variable "jobs" {
  default = [
    { name = "roboshop", folder = "Infra", repo_url = "https://github.com/sriharitirumala/roboshop-infra" },
    { name = "frontend", folder = "CI-pipeline", repo_url = "https://github.com/sriharitirumala/frontend" },
    { name = "cart", folder = "CI-pipeline", repo_url = "https://github.com/sriharitirumala/cart" },
    { name = "catalogue", folder = "CI-pipeline", repo_url = "https://github.com/sriharitirumala/catalogue" },
    { name = "user", folder = "CI-pipeline", repo_url = "https://github.com/sriharitirumala/user" },
    { name = "shipping", folder = "CI-pipeline", repo_url = "https://github.com/sriharitirumala/shipping" },
    { name = "payment", folder = "CI-pipeline", repo_url = "https://github.com/sriharitirumala/payment" },
    
  ]
}    