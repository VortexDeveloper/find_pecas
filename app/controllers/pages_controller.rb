class PagesController < ApplicationController
  def index
    @products = Vehicle.all.to_a
    @products << Part.all.to_a
  end

  def catalog
    @products = Vehicle.all.to_a
    @products << Part.all.to_a
  end

  def catalog_gallery
    @products = Vehicle.all.to_a
    @products << Part.all.to_a
  end
end
