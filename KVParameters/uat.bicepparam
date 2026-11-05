using '../keyVault.bicep'

param env = 'uat'

param projectName = 'Nimbus'

param enablePurgeProtection = true

param enableRBACAuthorization = true

param publicNetworkAccess = 'Enabled'

param enableSoftDelete = true

param location = 'East US'  

param sku = {
  family: 'A'
  name: 'standard'
}

param tags = {
  env: env
  projectName: projectName
  tier: '${env}-tier'
}
