param projectName string = 'Nimbus'

@allowed([
  'dev'
  'uat'
  'prod'
])
param env string 

@description('The location of the KV resource')
param location string


param enableSoftDelete bool 
param enablePurgeProtection bool
param enableRBACAuthorization bool

@allowed([
  'Enabled'
  'Disabled'
])
param publicNetworkAccess string

param sku object

param tags object 

resource kv 'Microsoft.KeyVault/vaults@2021-10-01' = {
  name: '${projectName}${env}-kv'
  location: location
  properties: {
    sku: sku
    tenantId: subscription().tenantId
    accessPolicies: []
    enableSoftDelete: enableSoftDelete
    enablePurgeProtection: enablePurgeProtection
    enableRbacAuthorization: enableRBACAuthorization
    publicNetworkAccess: publicNetworkAccess
  }
  tags: tags
}
