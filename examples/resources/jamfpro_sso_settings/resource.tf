resource "jamfpro_sso_settings" "google_example" {
  sso_enabled                                          = true
  configuration_type                                   = "SAML"
  sso_bypass_allowed                                   = true
  sso_for_enrollment_enabled                           = true
  sso_for_macos_self_service_enabled                   = true
  enrollment_sso_for_account_driven_enrollment_enabled = false
  group_enrollment_access_enabled                      = false
  group_enrollment_access_name                         = ""

  oidc_settings {
    user_mapping = "EMAIL"
  }

  saml_settings {
    token_expiration_disabled = true
    user_attribute_enabled    = false
    user_attribute_name       = ""
    user_mapping              = "USERNAME"
    group_attribute_name      = "http://schemas.xmlsoap.org/claims/Group"
    group_rdn_key             = ""
    idp_provider_type         = "GOOGLE"
    idp_url                   = ""
    entity_id                 = "saml/metadata"
    metadata_file_name        = "GoogleIDPMetadata.xml"
    other_provider_type_name  = ""
    federation_metadata_file  = "PD94bWwgdmVyc2lvbj0iMS4wIiBlbm..."
    metadata_source           = "FILE"
    session_timeout           = 480
  }

  enrollment_sso_config {
    hosts = []
  }
}

resource "jamfpro_sso_settings" "entra_id_example" {
  sso_enabled                                          = true
  configuration_type                                   = "SAML"
  sso_bypass_allowed                                   = true
  sso_for_enrollment_enabled                           = true
  sso_for_macos_self_service_enabled                   = true
  enrollment_sso_for_account_driven_enrollment_enabled = false
  group_enrollment_access_enabled                      = false
  group_enrollment_access_name                         = ""

  oidc_settings {
    user_mapping = "EMAIL"
  }

  saml_settings {
    token_expiration_disabled = true
    user_attribute_enabled    = false
    user_attribute_name       = ""
    user_mapping              = "EMAIL"
    group_attribute_name      = "http://schemas.microsoft.com/ws/2008/06/identity/claims/groups"
    group_rdn_key             = ""
    idp_provider_type         = "AZURE"
    idp_url                   = "https://example.idp.com/app/id/sso/saml/metadata"
    entity_id                 = "saml/metadata"
    metadata_file_name        = ""
    other_provider_type_name  = ""
    federation_metadata_file  = ""
    metadata_source           = "URL"
    session_timeout           = 480
  }

  enrollment_sso_config {
    hosts = []
  }
}
