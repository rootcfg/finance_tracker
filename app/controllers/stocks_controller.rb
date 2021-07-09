class StocksController < ApplicationController
  def search
    if params[:stock].present?
      @stock = Stoock.new_lookup(params[:stock])
      if @stock.nil?
        flash.now[:alert] = 'No data'
        respond_to do |format|
          format.js { render partial: 'users/result'}
        end
      else
        respond_to do |format|
          format.js { render partial: 'users/result'}
        end
      end
    else
      flash.now[:alert] = 'Please enter a symbol'
      respond_to do |format|
        format.js { render partial: 'users/result'}
      end
    end
  end
end