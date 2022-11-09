/*
*********************************************************************************************************************
* This is generic PUSH pipeline script for DXC Assure Platform projects.
*
* It can be used as a template for any Lambda project as it does not contain references to custom values.
* The specific configuration has to be done through the conf.yml file by setting the correct current repository name.
*
**********************************************************************************************************************
*/

@Library(['pdxc-pipeline-lib@assure', 'assure-jenkins-library@master']) _

functions = [:]

functions['test'] =  ['skip': true]
pipelineJavaDocker(functions)