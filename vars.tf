variable "folders" {
  default = ["Infra", "CI-Pipeline"]
}

variable "m-jobs" {
  default = [
    { name = "roboshop", folder = "Infra", repo_url = "https://github.com/taraka1996/roboshop-infra" },
    { name = "frontend", folder = "CI-pipeline", repo_url = "https://github.com/taraka1996/frontend" },
    { name = "cart", folder = "CI-pipeline", repo_url = "https://github.com/taraka1996/cart" },
    { name = "catalogue", folder = "CI-pipeline", repo_url = "https://github.com/taraka1996/catalogue" },
    { name = "user", folder = "CI-pipeline", repo_url = "https://github.com/taraka1996/user" },
    { name = "shipping", folder = "CI-pipeline", repo_url = "https://github.com/taraka1996/shipping" },
    { name = "payment", folder = "CI-pipeline", repo_url = "https://github.com/taraka1996/payment" },
    
  ]
}   

variable "s-jobs" {
  default = []

}  

variable "force" {
  default = false
}
  