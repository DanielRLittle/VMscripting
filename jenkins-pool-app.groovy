node {
    stage("update") {
        sh "sudo apt update"
    }
    stage("run ui") {
        sh "curl https://get.docker.com | sudo bash"
        sh "sudo docker run -d -p 80:80 danielrlittle/ui2"
    }
}