module Spektrix
  module Rails
    module IframeHelper
      def account_path
        "https://system.spektrix.com/#{Spektrix.configuration.client_name}/website/secure/MyAccount.aspx?resize=true"
      end

      def basket_path
        "https://system.spektrix.com/#{Spektrix.configuration.client_name}/website/Basket2.aspx?resize=true"
      end

      def instance_booking_path(instance_id)
        "https://system.spektrix.com/#{Spektrix.configuration.client_name}/website/ChooseSeats.aspx?EventInstanceId=#{instance_id}&resize=true"
      end
    end
  end
end