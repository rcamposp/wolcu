class OrdersController < ApplicationController
  
  def new
  	@viva = params[:viva]
  	puts @viva
  end

  def create
  end
end
