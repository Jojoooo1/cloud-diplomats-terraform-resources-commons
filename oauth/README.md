<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.7 |
| <a name="requirement_google"></a> [google](#requirement\_google) | >= 5.4 |
| <a name="requirement_google-beta"></a> [google-beta](#requirement\_google-beta) | >= 5.4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 5.4.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_iap_brand.project_brand](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/iap_brand) | resource |
| [google_iap_client.iap_internal_client_dev](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/iap_client) | resource |
| [google_iap_client.iap_internal_client_prod](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/iap_client) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The project ID | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_client_id_iap_internal_client_dev"></a> [client\_id\_iap\_internal\_client\_dev](#output\_client\_id\_iap\_internal\_client\_dev) | Unique identifier of the dev OAuth client. |
| <a name="output_client_id_iap_internal_client_prod"></a> [client\_id\_iap\_internal\_client\_prod](#output\_client\_id\_iap\_internal\_client\_prod) | Unique identifier of the prod OAuth client. |
| <a name="output_secret_iap_internal_client_dev"></a> [secret\_iap\_internal\_client\_dev](#output\_secret\_iap\_internal\_client\_dev) | Client secret of the dev OAuth client. |
| <a name="output_secret_iap_internal_client_prod"></a> [secret\_iap\_internal\_client\_prod](#output\_secret\_iap\_internal\_client\_prod) | Client secret of the prod OAuth client. |
<!-- END_TF_DOCS -->