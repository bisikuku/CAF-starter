
keyvaults = {
  level3 = {
    name               = "l3"
    resource_group_key = "level3"
    sku_name           = "standard"
    tags = {
      caf_tfstate     = "level3"
      caf_environment = "mondoso-env"
    }

    creation_policies = {
      subscription_creation_landingzones = {
        object_id          = "dabcf8e3-cd49-4b2b-b9e9-ceb5fc5f3b4b"
        secret_permissions = ["Get"]
      }
      level0 = {
        object_id          = "3b152ef0-952f-4c82-9eb5-a36b5404a9c7"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      caf_platform_maintainers = {
        object_id          = "d51b422c-2077-44c6-9683-216c593ed2c0"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
    }

  }

  level4 = {
    name               = "l4"
    resource_group_key = "level4"
    sku_name           = "standard"
    tags = {
      caf_tfstate     = "level4"
      caf_environment = "mondoso-env"
    }

    creation_policies = {
      subscription_creation_landingzones = {
        object_id          = "dabcf8e3-cd49-4b2b-b9e9-ceb5fc5f3b4b"
        secret_permissions = ["Get"]
      }
      caf_ac_landingzone_maintainers_non_prod = {
        azuread_group_key  = "caf_ac_landingzone_maintainers_non_prod"
        secret_permissions = ["Get"]
      }
      caf_ac_landingzone_maintainers_prod = {
        azuread_group_key  = "caf_ac_landingzone_maintainers_prod"
        secret_permissions = ["Get"]
      }
      level0 = {
        object_id          = "3b152ef0-952f-4c82-9eb5-a36b5404a9c7"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      caf_platform_maintainers = {
        object_id          = "d51b422c-2077-44c6-9683-216c593ed2c0"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
    }

  }

}
