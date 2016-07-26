module Spektrix
  module Rails
    module NewsletterSignup
      include ActiveSupport::Concern

      def show
        @errors = case params['Error']
                    when 'NoLastName'
                      { 'LastName' => "Please include your last name"}
                    when 'EmailExists'
                      { 'Email' => "Your email address already exists on our list"}
                    when 'NoEmail'
                      { 'Email' => "Please include your email address"}
                    when 'InvalidEmail'
                      { 'Email' => "The email you've supplied doesn't look quite right."}
                  end

        @came_from_spektrix = request.referer.try(:match,"spektrix") && !@errors.present?
        yield if block_given?
      end

    end
  end
end