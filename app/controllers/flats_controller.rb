class FlatsController < ApplicationController
  def create
    @flat = Flat.new(permitted_params)
    @flat.valid?
    @flat.save unless Flat.find_by(latitude: @flat.latitude, longitude: @flat.longitude)
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js
    end
  end

  private

  def permitted_params
    params.require(:flat).permit(:address)
  end
end
