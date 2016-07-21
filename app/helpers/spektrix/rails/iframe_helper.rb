module Spektrix
  module Rails
    module IframeHelper
      def account_iframe_url
        "https://system.spektrix.com/#{Spektrix.configuration.client_name}/website/secure/MyAccount.aspx?resize=true"
      end

      def basket_iframe_url
        "https://system.spektrix.com/#{Spektrix.configuration.client_name}/website/Basket2.aspx?resize=true"
      end

      def checkout_iframe_url
        "https://system.spektrix.com/#{Spektrix.configuration.client_name}/website/secure/Checkout.aspx?resize=true"

      end

      def instance_booking_iframe_url(instance_id)
        "https://system.spektrix.com/#{Spektrix.configuration.client_name}/website/ChooseSeats.aspx?EventInstanceId=#{instance_id}&resize=true"
      end
    end
  end
end