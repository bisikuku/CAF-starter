
keyvaults = {
  level0 = {
    name               = "l0"
    resource_group_key = "level0"
    sku_name           = "premium"
    tags = {
      caf_tfstate     = "level0"
      caf_environment = "mondoso-env"
    }

    creation_policies = {
      // bisi@netfortsolution.onmicrosoft.com
      bootstrap_user = {
        object_id          = "f230befd-831c-4fa7-bea3-45b7f6f469d0"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      caf_platform_maintainers = {
        azuread_group_key  = "caf_platform_maintainers"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      caf_platform_contributors = {
        azuread_group_key  = "caf_platform_contributors"
        secret_permissions = ["Get"]
      }
    }

  }

  level1 = {
    name               = "l1"
    resource_group_key = "level1"
    sku_name           = "premium"
    tags = {
      caf_tfstate     = "level1"
      caf_environment = "mondoso-env"
    }

    creation_policies = {
      // bisi@netfortsolution.onmicrosoft.com
      bootstrap_user = {
        object_id          = "f230befd-831c-4fa7-bea3-45b7f6f469d0"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      caf_platform_maintainers = {
        azuread_group_key  = "caf_platform_maintainers"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      caf_platform_contributors = {
        azuread_group_key  = "caf_platform_contributors"
        secret_permissions = ["Get"]
      }
    }

  }

  level2 = {
    name               = "l2"
    resource_group_key = "level2"
    sku_name           = "premium"
    tags = {
      caf_tfstate     = "level2"
      caf_environment = "mondoso-env"
    }

    creation_policies = {
      // bisi@netfortsolution.onmicrosoft.com
      bootstrap_user = {
        object_id          = "f230befd-831c-4fa7-bea3-45b7f6f469d0"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      caf_platform_maintainers = {
        azuread_group_key  = "caf_platform_maintainers"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      caf_platform_contributors = {
        azuread_group_key  = "caf_platform_contributors"
        secret_permissions = ["Get"]
      }
    }

  }
}
