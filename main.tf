resource "jenkins_folder" "folders" {
  count = length(var.folders)
  name =  element(var.folders, count.index )
}

resource "jenkins_job" "job" {
  depends_on = [jenkins_folder.folders]
  
  count    = length(var.jobs)
  name     = lookup(element(var.jobs, count.index), "name", null)
  folder   = "/job/${lookup(element(var.jobs, count.index), "folder", null)}"
  
  template = templatefile("${path.module}/sb-job.xml", {
    repo_url = lookup(element(var.jobs, count.index), "repo_url", null)
  })



lifecycle {
  ignore_changes = [template]
      
 }

}

resource "aws_instance" "jenkins" {
  id = "i-094cb43f580e5bedd"
}

resource "aws_route53_record" "jenkins" {
  zone_id = "Z09657943T1DXGIZMZ588"
  name    = "jenkins.tarak.cloud"
  type    = "A"
  ttl     = 30
  records = [aws_instance.jenkins.public_ip]
}
