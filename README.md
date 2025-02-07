# terraform-gitlab-group_variable

Terraform module to manage the following GitLab resources:

* gitlab_group_variable

## Usage

Copy and paste the following code snippet to your Terraform configuration,
specify the required variables and run the command `terraform init`.

```hcl
module "gitlab_group_access_token" {
  source  = "gitlab.com/terraform-child-modules-48151/terraform-gitlab-group-access-token/local"
  version = "1.0.0"

  group  = "example-group-48165"
  name   = "example-access-token"
  scopes = ["read_api"]
}

module "gitlab_group_variable" {
  source  = "gitlab.com/terraform-child-modules-48151/terraform-gitlab-group-variable/local"
  version = "1.0.0"

  group = "example-group-48165"
  key   = "example_key"
  value = module.gitlab_group_access_token.token

  masked = true
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_gitlab"></a> [gitlab](#requirement\_gitlab) | ~> 17.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_gitlab"></a> [gitlab](#provider\_gitlab) | ~> 17.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [gitlab_group_variable.this](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/resources/group_variable) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | The description of the variable | `string` | `null` | no |
| <a name="input_environment_scope"></a> [environment\_scope](#input\_environment\_scope) | The environment scope of the variable | `string` | `"*"` | no |
| <a name="input_group"></a> [group](#input\_group) | The name or id of the group | `string` | n/a | yes |
| <a name="input_key"></a> [key](#input\_key) | The name of the variable | `string` | n/a | yes |
| <a name="input_masked"></a> [masked](#input\_masked) | If set to true, the value of the variable will be hidden in job logs | `bool` | `false` | no |
| <a name="input_protected"></a> [protected](#input\_protected) | If set to true, the variable will be passed only to pipelines running on protected branches and tags | `bool` | `false` | no |
| <a name="input_raw"></a> [raw](#input\_raw) | Whether the variable is treated as a raw string | `bool` | `false` | no |
| <a name="input_value"></a> [value](#input\_value) | The value of the variable | `string` | n/a | yes |
| <a name="input_variable_type"></a> [variable\_type](#input\_variable\_type) | The type of a variable | `string` | `"env_var"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of this resource |
<!-- END_TF_DOCS -->

## Authors

Created and maintained by [Dennis Hoppe](https://gitlab.com/dhoppeIT).

## License

Apache 2 licensed. See [LICENSE](LICENSE) for full details.
