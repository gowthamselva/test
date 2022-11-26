pipeline{
  agent any
  stages{
      stage("Git clone"){
          steps{
              git branch: 'main', credentialsId: 'github', url: 'https://github.com/gowthamselva/test'
          }
      }
        stage('Building image'){
            steps{
                script{
                    sh 'docker build -t gowtham2mahtwog/demo .'
                }
            }
        }
        stage("push to dockerhub"){
            steps{
                script{
                    withCredentials([string(credentialsId: 'dockerhubpwd', variable: 'dockerhubpwd')]) {
                    sh 'docker login -u gowtham2mahtwog -p ${dockerhubpwd}'
}
                    sh 'docker push gowtham2mahtwog/demo'
                }
            }
        }
  }
}
