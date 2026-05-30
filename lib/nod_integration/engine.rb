module NodIntegration
  class Engine < ::Rails::Engine
    #isolate_namespace NodIntegration
    
    config.to_prepare do
      # overriding kmaps_engine helpers
      require_dependency 'shanti_integration_helper'
      require_dependency 'concerns/nod_integration/shanti_integration_helper_overrides'
      ShantiIntegrationHelper.prepend NodIntegration::ShantiIntegrationHelperOverrides
      
      # overriding authentication helpers (included in application_controller) defined in ShantiIntegration
      require_dependency 'application_controller'
      require_dependency 'nod_integration/authentication_overrides'
      ApplicationController.prepend NodIntegration::AuthenticationOverrides
    end
  end
end
