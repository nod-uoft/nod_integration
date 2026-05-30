module NodIntegration
  module AuthenticationOverrides
    def shibboleth_fullname
      request.env['HTTP_CN']
    end

    def shibboleth_email
      request.env['HTTP_MAIL']
    end
    
  end
end