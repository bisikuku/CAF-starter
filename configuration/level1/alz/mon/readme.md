# Enterprise scale

## Deploy Enterprise Scale

Note you need to adjust the branch to deploy Enterprise Scale to 2203.1

```bash
az account clear
# login a with a user member of the caf-platform-maintainers group
rover login -t netfortsolution.onmicrosoft.com

cd /tf/caf/landingzones
git fetch origin
git checkout 2203.1

rover \
  --impersonate-sp-from-keyvault-url https://mond-kv-es-hcr.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution/add-ons/caf_eslz \
  -var-folder /tf/caf/configuration/level1/alz/mon \
  -tfstate_subscription_id 8db012f5-4932-4c17-8293-26e955ca881b \
  -tfstate alz_mon.tfstate \
  -env mondoso-env \
  -level level1 \
  -p ${TF_DATA_DIR}/alz_mon.tfstate.tfplan \
  -a plan

```

# Next steps

[Deploy asvm](../../level2/asvm/readme.md)
[Deploy Connectivity](../../level2/connectivity/virtual_wans/readme.md)
