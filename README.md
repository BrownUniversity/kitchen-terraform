# kitchen-terraform
A docker image built from the official terraform docker image, then ruby, python, kitchen-terraform, and the packages in the `Gemfile` installed in next layers.

## Usage

See `terraform-test.yml` for usage in a github actions workflow.

Expected secrets:
* `GCP_BILLING_ACCOUNT`: GCP billing account number for test project
* `GCP_ORG_ID`: GCP organization id for test project
* `GCP_FOLDER_ID`: GCP folder id for test project
* `GCP_CREDENTIAL_JSON`: contents of GCP `credentials.json` file

In the workflow, many of these secrets are assigned to environment variables starting with `TF_VAR`. These will be used as terraform variables when running the tests.
