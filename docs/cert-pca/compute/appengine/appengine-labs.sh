# Deploy sample app bookshelf with Google App Engine
# Source: https://github.com/GoogleCloudPlatformTraining/cp100-bookshelf

# Create the folder structure
mkdir sample-bookshelf
cd sample-bookshelf
mkdir cp100
cd cp100

# Copy the original GitHub repository content in GCP Sources
gcloud source repos clone sample-bookshelf
cd sample-bookshelf
git clone https://github.com/GoogleCloudPlatformTraining/cp100-bookshelf.git
git pull https://github.com/GoogleCloudPlatformTraining/cp100-bookshelf.git
git push origin master

# Install the dependencies and deploy in GCP App Engine
cd app-engine
pip install -r requirements.txt -t lib
gcloud app deploy

# Run a local sandbox environment in Cloud Shell
dev_appserver.py ./app.yaml
