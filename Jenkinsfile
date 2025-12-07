pipeline {
    agent any
stages {
        stage("Git Checkout") {
            steps {
                echo "git checkout happened here"
            }
        }

        stage("mvn build") {
            steps {
                echo "mvh package stage"
            }
        }

        stage("tomcat-deployment") {
            steps {
              echo " deployment happened here "
            }
        }
    }
}
