pipeline {
 agent any
 stages {
 stage('Build') {
 steps {
 script {
 try {
 echo 'Building application...'
 } catch (Exception e) {
 error "Build failed!"
 }
 }
 }
 }
 stage('Test') {
 steps {
 script {
 try {
 echo 'Running tests...'
 } catch (Exception e) {
 error "Tests failed!"
 }
 }
 }
 }
 stage('Deploy') {
 steps {s
 echo 'Deploying application...'
 }
 }
 stage('Deploy to Staging') {
 steps {
 echo 'Deploying to Staging...'
 }
}
stage('Deploy to Production') {
 steps {
 input 'Deploy to Production?'
 echo 'Deploying to Production...'
 }
}
 }
}