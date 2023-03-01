
#
# Services supported: subscriptions, storage accounts and resource groups
# Can assign roles to: AD groups, AD object ID, AD applications, Managed identities
#

role_mapping = {
  built_in_role_mapping = {
    resource_groups = {
      level3 = {
        "Reader" = {
          object_ids = {
            keys = [
              "d51b422c-2077-44c6-9683-216c593ed2c0", // caf_platform_maintainers
              "dabcf8e3-cd49-4b2b-b9e9-ceb5fc5f3b4b"  // subscription_creation_landingzones
            ]
          }
          azuread_groups = {
            keys = [
              "caf_ac_landingzone_maintainers_non_prod",
              "caf_ac_landingzone_maintainers_prod"
            ]
          }
        }
      }
      level4 = {
        "Reader" = {
          object_ids = {
            keys = [
              "d51b422c-2077-44c6-9683-216c593ed2c0", // caf_platform_maintainers
              "dabcf8e3-cd49-4b2b-b9e9-ceb5fc5f3b4b"  // subscription_creation_landingzones
            ]
          }
          azuread_groups = {
            keys = [
              "caf_ac_landingzone_maintainers_non_prod",
              "caf_ac_landingzone_maintainers_prod"
            ]
          }
        }
      }
    }

    storage_accounts = {
      level3 = {
        "Storage Blob Data Contributor" = {
          object_ids = {
            keys = [
              "d51b422c-2077-44c6-9683-216c593ed2c0", // caf_platform_maintainers
              "dabcf8e3-cd49-4b2b-b9e9-ceb5fc5f3b4b"  // subscription_creation_landingzones
            ]
          }
        }
        "Owner" = {
          object_ids = {
            keys = [
              "dabcf8e3-cd49-4b2b-b9e9-ceb5fc5f3b4b" // subscription_creation_landingzones
            ]
          }
        }
      }

      level4 = {
        "Storage Blob Data Contributor" = {
          object_ids = {
            keys = [
              "d51b422c-2077-44c6-9683-216c593ed2c0", // caf_platform_maintainers
              "dabcf8e3-cd49-4b2b-b9e9-ceb5fc5f3b4b"  // subscription_creation_landingzones
            ]
          }
        }
        "Owner" = {
          object_ids = {
            keys = [
              "dabcf8e3-cd49-4b2b-b9e9-ceb5fc5f3b4b" // subscription_creation_landingzones
            ]
          }
        }
      }

    }
  }
}
