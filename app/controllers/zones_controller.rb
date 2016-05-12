class ZonesController < ApplicationController
    def show
        @zone = City.joins(:zone).where(:zone_id => params[:id], :status => 1)
        render json: @zone
    end
end