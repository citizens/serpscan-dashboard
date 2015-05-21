module Serpscan
  module Dashboard
    class DashboardController < ActionController::Base

      def error
      end

      rescue_from RestClient::Unauthorized do |e|
        flash[:alert] = "Your API Key is invalid."
        redirect_to error_path
      end
    end
  end
end