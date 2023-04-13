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

resource "aws_instance" "jenkins" {
  ami           = "ami-0c94855ba95c71c99"
  instance_type = "t2.micro"
  key_name      = "my-key"
  vpc_security_group_ids = [aws_security_group.jenkins.id]
  subnet_id     = aws_subnet.jenkins.id
}
