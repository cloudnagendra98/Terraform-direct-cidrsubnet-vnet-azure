resource_group_name    = "ntier-dev"
resourcegroup_location = "eastus"
azure_network_range    = "10.10.0.0/16"
#we dont need subnet prefixes so remove here 
#azure_subnets_range    = ["10.10.0.0/24", "10.10.1.0/24", "10.10.2.0/24", "10.10.3.0/24"]
subnets_names          = ["web", "app", "db", "mgmt"]
