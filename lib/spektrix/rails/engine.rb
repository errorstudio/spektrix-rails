module Spektrix
  module Rails
    class Engine < ::Rails::Engine

      isolate_namespace Spektrix::Rails

      config.before_initialize do

      end

      initializer "add_helpers" do
        ActiveSupport.on_load(:action_view) do
          include Spektrix::Rails::NewsletterHelper
        end
      end

    end
  end
end
