module Serpscan
  module Dashboard
    class WebsitesController < ActionController::Base
      layout 'serpscan/dashboard'
      
      def index
        @websites = Serpscan::Website.all

        if @websites.count.eql?(1)
          redirect_to "serpscan/#{@websites[0].id}"
        end
      end

      def show
        @website = Serpscan::Website.find(params[:id])
        @keywords = @website.keywords
        @attributes = [:phrase, :current_rank, :day_change, :month_change, :alltime_change]
        @search_engines = Serpscan::SearchEngine.all
      end
    end
  end
end
