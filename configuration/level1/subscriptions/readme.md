
### Platform subscriptions
Set-up the subscription delegations for platform and landingzone subscriptions

```bash
# For manual bootstrap:
# Login to the subscription mondoso with the user bisi@netfortsolution.onmicrosoft.com
rover login -t netfortsolution.onmicrosoft.com -s 8db012f5-4932-4c17-8293-26e955ca881b

rover \
  --impersonate-sp-from-keyvault-url https://mond-kv-scp-dut.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level1/subscriptions \
  -tfstate_subscription_id 8db012f5-4932-4c17-8293-26e955ca881b \
  -tfstate platform_subscriptions.tfstate \
  -env mondoso-env \
  -level level1 \
  -p ${TF_DATA_DIR}/platform_subscriptions.tfstate.tfplan \
  -a plan

```


# Next steps

When you have successfully deployed the subscriptions management landing zone, you can move to the next step:

[Deploy the management services](../../level1/management/readme.md)