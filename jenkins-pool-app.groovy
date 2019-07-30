node {
    stage("run ui") {
        sh "sudo docker run -d -p 80:80 danielrlittle/ui2"
    }
}