pipeline {
    agent any 
    stages {
        stage('Running Burp Scanner') {
            steps {
                echo 'Running Burp Scanner...'
                sh label: '', script: '''curl -X POST \'http://localhost:9091/api/9hul301EYMABehoJskqLAo8qbD1F4REY/v0.1/scan\' -d \'{"application_logins":[{"password":"password","type":"UsernameAndPasswordLogin","username":"admin"}],"name":"DVWA","scan_configurations":[{"name":"Audit checks - light active","type":"NamedConfiguration"}],"urls":["http://localhost/DVWA-master"]}\'
            '''
            }
        }
             stage('Extracting Report') {
            steps {
                echo 'Extracting Report...'
                while( not "scan_status":"succeeded") ;do
                 sh label: '', script: '''curl -s -X GET \'http://localhost:9091/api/9hul301EYMABehoJskqLAo8qbD1F4REY/v0.1/scan\41\'    > burp_result.json
             ''' 
                done
            }
        }
    }
}
