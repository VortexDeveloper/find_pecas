class PagesController < ApplicationController
  def index
    @product = Vehicle.all.to_a
    @product << Part.all.to_a
  end

  def catalog
    @product = Vehicle.all.to_a
    @product << Part.all.to_a
  end

  def catalog_gallery
    @product = Vehicle.all.to_a
    @product << Part.all.to_a
  end
end
