pipeline {
  agent any
  stages {
    stage("build stage"){
      when {
        branch "develop"
      }
      steps {
        echo "Build happens here"
      }
    }
    stage("dev-deploymnet){
      when {
        branch "develop"
      }
          steps {
            echo "dev deployment"
          }
    }
    stage("prod-deploymnet){
      when {
        branch "main"
      }
          steps {
            echo "prod deployment"
          }
    }
  }
}
