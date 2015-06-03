module Serpscan
  module Dashboard
    class WebsitesController < DashboardController
      layout 'serpscan/dashboard'
      
      def index
        @websites = Serpscan::Website.all

        if @websites.count.eql?(1)
          redirect_to serpscan_dashboard.website_path(@websites.first.id)
        end
      end

      def create
        if params[:url].present?
          Serpscan::Website.create(url: params[:url])
          flash[:success] = "Website successfully created"
        else
          flash[:error] = "Please provide a url"
        end

        redirect_to :back
      end

      def show
        @website = Serpscan::Website.find(params[:id])
        @keywords = @website.keywords
        @attributes = [:phrase, :current_rank, :day_change, :month_change, :alltime_change]
        @search_engines = Serpscan::SearchEngine.all
      end

      def delete
        if params[:id].present?
          Serpscan::Website.find(params[:id]).delete
          flash[:success] = "Website successfully deleted"
        else
          flash[:error] = "Please select a website to delete"
        end        

        redirect_to serpscan_dashboard.websites_path
      end
    end
  end
end
