Rails.application.routes.draw do
  mount NodIntegration::Engine => "/nod_integration"
end
