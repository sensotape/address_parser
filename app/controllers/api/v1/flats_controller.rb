class Api::V1::FlatsController < Api::V1::BaseController
  def index
    @flat = Flat.find_by(address: params[:address]) || Flat.create(address: params[:address])
  end
end
