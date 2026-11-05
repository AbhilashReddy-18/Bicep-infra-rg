targetScope = 'subscription'

param resourceGroupName string 
param projectName string = 'Nimbus'
param location string

@allowed([
    'dev'
    'uat'
    'prod'
])
param env string

resource resourceGroup 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: resourceGroupName
  location: location
  tags: {
    env: env
    projectName: projectName
  }
}

output resourceGroupId string = resourceGroup.id
