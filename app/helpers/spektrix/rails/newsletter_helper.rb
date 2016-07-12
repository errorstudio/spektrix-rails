module Spektrix
  module Rails
    module NewsletterHelper
      def spektrix_signup_path
        "https://system.spektrix.com/#{Spektrix.configuration.client_name }/website/secure/signup.aspx"
      end
    end
  end
end
