module Serpscan
  module Dashboard
    class KeywordsController < ActionController::Base

      def create
        @website = Serpscan::Website.find(params[:id])

        if params[:keyword].present?
          @website.create_keyword(params[:keyword])
          flash[:success] = "Keyword successfully created"
        else
          flash[:error] = "Please provide a keyword"
        end

        redirect_to :back
      end

      def delete
        if params[:ids].present?
          ids = params[:ids].split(',')
          ids.map { |id| Serpscan::Keyword.find(id).delete }
          flash[:success] = "Keyword successfully deleted"
        else
          flash[:error] = "Please select a keyword to delete"
        end        

        redirect_to :back
      end
    end
  end
end
