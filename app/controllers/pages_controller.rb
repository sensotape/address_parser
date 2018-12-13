class PagesController < ApplicationController
  def home
    @flat = Flat.new if @flat.nil?
  end
end
