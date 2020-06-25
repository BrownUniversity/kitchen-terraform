# kitchen-terraform
A docker build with base image as official terraform docker image, then ruby and kitchen-terraform installed in next layers.

## Usage

See `terraform-test.yml` for usage in a github actions workflow.

Expected secrets:
* `GCP_BILLING_ACCOUNT`: GCP billing account number for test project
* `GCP_ORG_ID`: GCP organization id for test project
* `GCP_FOLDER_ID`: GCP folder id for test project
* `GCP_CREDENTIAL_JSON`: contents of GCP `credentials.json` file
