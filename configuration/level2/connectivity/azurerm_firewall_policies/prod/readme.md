
```bash
#Note: close previous session if you logged with a different service principal using --impersonate-sp-from-keyvault-url
rover logout

# login a with a user member of the caf-maintainers group
rover login -t netfortsolution.onmicrosoft.com

rover \
  --impersonate-sp-from-keyvault-url https://mond-kv-co-fwu.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level2/connectivity/azurerm_firewall_policies/prod \
  -tfstate_subscription_id 8db012f5-4932-4c17-8293-26e955ca881b \
  -target_subscription 8db012f5-4932-4c17-8293-26e955ca881b \
  -tfstate connectivity_firewall_policies_prod.tfstate \
  -env mondoso-env \
  -level level2 \
  -w tfstate \
  -p ${TF_DATA_DIR}/connectivity_firewall_policies_prod.tfstate.tfplan \
  -a plan

```

