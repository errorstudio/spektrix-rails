module Spektrix
  module Rails
    class NewsletterSignupsControllerGenerator < ::Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)
      desc "Generate a standardised NewsletterSignupsController and views."

      def copy_template
        template "newsletter_signups_controller.rb.erb", "app/controllers/newsletter_signups_controller.rb"
      end

      def create_views
        template "show.html.erb", "app/views/newsletter_signups/show.html.erb"
      end

      def add_route
        comment_lines 'config/routes.rb', /newsletter_signups#.*/
        route 'resource :newsletter_signup, only: [:show], path: "newsletter"'
      end
    end
  end
end