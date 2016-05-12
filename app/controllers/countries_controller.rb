class CountriesController < ApplicationController
    def show
        @country = Zone.joins(:country).where(:country_id => params[:id], :status => 1)
        render json: @country
    end
end