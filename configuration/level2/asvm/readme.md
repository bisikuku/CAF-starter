# Azure Subscription Vending Machine (asvm)

```bash
# login a with a user member of the caf-platform-maintainers group
rover login -t netfortsolution.onmicrosoft.com

cd /tf/caf/landingzones
git fetch origin
git checkout 2203.0

rover \
  --impersonate-sp-from-keyvault-url https://mond-kv-idl0-efc.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level2/asvm \
  -tfstate_subscription_id 8db012f5-4932-4c17-8293-26e955ca881b \
  -target_subscription 8db012f5-4932-4c17-8293-26e955ca881b \
  -tfstate asvm_subscription_vending_machine.tfstate \
  -env mondoso-env \
  -level level2 \
  -p ${TF_DATA_DIR}/asvm_subscription_vending_machine.tfstate.tfplan \
  -a plan

```

