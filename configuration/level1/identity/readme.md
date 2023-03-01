
# Identity
Deploy the identity services

```bash
#Note: close previous session if you logged with a different service principal using --impersonate-sp-from-keyvault-url
rover logout

# login a with a user member of the caf-maintainers group
rover login -t netfortsolution.onmicrosoft.com -s 8db012f5-4932-4c17-8293-26e955ca881b

rover \
  --impersonate-sp-from-keyvault-url https://mond-kv-id-iis.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level1/identity \
  -tfstate_subscription_id 8db012f5-4932-4c17-8293-26e955ca881b \
  -target_subscription 8db012f5-4932-4c17-8293-26e955ca881b \
  -tfstate identity.tfstate \
  -env mondoso-env \
  -level level1 \
  -p ${TF_DATA_DIR}/identity.tfstate.tfplan \
  -a plan

```


# Next steps

[Deploy Enterprise Scale - region1](../../level1/alz/region1/readme.md)
