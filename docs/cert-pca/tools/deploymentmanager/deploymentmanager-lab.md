# Deployment Manager

## Review an existing template
 1. Marketplace
 2. The parameters and API endpoints can be exported by using the REST feature in the console

## Deploy a YAML configuration
```bash
# Create a deployment using a YAML config file
gcloud deployment-manager deployments create methyl-deployment-instance --config instance.yaml

# Delete a deployment
gcloud deployment-manager deployments delete methyl-deployment-instance
```

## Deploy using a template
 - Use the imports parameter in the YAML configuration file
 - Have the template files available in the folder
