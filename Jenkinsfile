pipeline {
    agent any 
    stages {
             stage('Extracting Report') {
            steps {
                echo 'Extracting Report...'
                 sh label: '', script: '''curl -s -X GET \'http://localhost:9091/api/9hul301EYMABehoJskqLAo8qbD1F4REY/v0.1/scan\41\'    > burp_result.json
             ''' 
            }
        }
    }
}
