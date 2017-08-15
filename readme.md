# Defaulting Variables Example

## Note

The "Random" Terraform Provider provides access to random names:

https://www.terraform.io/docs/providers/random/r/pet.html

In the module we use the [coalesce interpolation function](https://www.terraform.io/docs/configuration/interpolation.html#coalesce-string1-string2-) to pick the first non-empty identifier for the resource group; being either the name or the "random pet".
Given this variable is defaulted to an empty string in `example/inputs.tf` - the user won't be prompted / have to pass this variable in.

That said - I'd suggest doing this only for Resource Names, and not to create Resources if they don't exist.

## Running this example

**Note** this requires Terraform 0.10

```
terraform init
```

This will download the `azurerm` and `random` terraform providers.

This guide assumes you have the following environment variables configured - see [the AzureRM Provider guide](https://www.terraform.io/docs/providers/azurerm/index.html) for more info:

- `ARM_TENANT_ID`
- `ARM_SUBSCRIPTION_ID`
- `ARM_CLIENT_ID`
- `ARM_CLIENT_SECRET`

To see the plan for these changes run:
```
terraform plan
```

To apply these changes run:
```
terraform apply
```

Note: in a Production environment you should save the Plan to a file and then apply that, but for development this should be fine.
