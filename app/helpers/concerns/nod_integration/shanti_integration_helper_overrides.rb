module NodIntegration
  module ShantiIntegrationHelperOverrides
    def collections
      [
        {
          shanticon: 'terms',
          title: defined?(TermsIntegration) ? TermsIntegration::Feature.human_name(:count => :many).titleize.s : Feature.model_name.human(:count => :many).titleize.s,
          url: defined?(TermsIntegration) ? TermsIntegration::TermsResource.get_url : root_path
        },
        {
          shanticon: 'subjects',
          title: defined?(SubjectsIntegration) ? SubjectsIntegration::Feature.human_name(:count => :many).titleize.s : Feature.model_name.human(:count => :many).titleize.s,
          url: defined?(SubjectsIntegration) ? SubjectsIntegration::SubjectsResource.get_url : root_path
        }
      ]
    end
  end
  
end