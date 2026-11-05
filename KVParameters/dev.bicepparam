using '../keyVault.bicep'

param env = 'dev'

param projectName = 'Nimbus1'

param enablePurgeProtection = true

param enableRBACAuthorization = false

param publicNetworkAccess = 'Enabled'

param enableSoftDelete = true

param location = 'West US'  

param sku = {
  family: 'A'
  name: 'standard'
}

param tags = {
  env: env
  projectName: projectName
  tier: '${env}-tier'
}
