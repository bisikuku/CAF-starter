#
# Execute the following command to get the billing_account_name and management_group_id
#
# az rest --method get --uri https://management.azure.com/providers/Microsoft.Billing/billingaccounts/?api-version=2020-05-01
#
# To retrieve the first billing account
#
# billing_account_name=$(az rest --method get --uri https://management.azure.com/providers/Microsoft.Billing/billingaccounts?api-version=2020-05-01 --query "value[?properties.agreementType=='EnterpriseAgreement'].{name:name}" -o tsv)
#
# enrollment_account_name=$(az rest --method get --uri https://management.azure.com/providers/Microsoft.Billing/billingaccounts?api-version=2020-05-01 --query "value[?properties.agreementType=='EnterpriseAgreement'].{name:properties.enrollmentAccounts[0].name}" -o tsv)
#

subscriptions = {

  launchpad = {
    name            = "mondoso"
    create_alias    = false
    subscription_id = "8db012f5-4932-4c17-8293-26e955ca881b"
  }
  identity = {
    name            = "mondoso"
    create_alias    = false
    subscription_id = "8db012f5-4932-4c17-8293-26e955ca881b"
  }
  connectivity = {
    name            = "mondoso"
    create_alias    = false
    subscription_id = "8db012f5-4932-4c17-8293-26e955ca881b"
  }
  management = {
    name            = "mondoso"
    create_alias    = false
    subscription_id = "8db012f5-4932-4c17-8293-26e955ca881b"
  }
}