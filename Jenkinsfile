node(label: 'SSH-test') {
  environment {
   registry = "isospin43/webpage"
   registryCredential = 'temphub'
 // dockerImage = ''
  }
  
    def app

    stage('Clone repository') {
        /* Let's make sure we have the repository cloned to our workspace */

        checkout scm
    }

    stage('Build image') {
      
     // agent {
     //            label 'APP'
     //        }
        /* This builds the actual image; synonymous to
         * docker build on the command line */

     // sh "docker build -t isospin43/webpage ."
      
        app = docker.build("isospin43/webpage")
        
    }

    stage('Test image') {
        /* Ideally, we would run a test framework against our image.
         * Just an example */

        app.inside {
            sh 'echo "Tests passed"'
        }
    }

    stage('Push image') {
        /* Finally, we'll push the image with two tags:
         * First, the incremental build number from Jenkins
         * Second, the 'latest' tag.
         * Pushing multiple tags is cheap, as all the layers are reused. */
         docker.withRegistry('', 'temphub') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
    } 
 
}
