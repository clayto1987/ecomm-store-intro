class StoreController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def search
  end #loads app/views/store/search.html.erb

  def search_results
    #search through product model using params hash
    @products = Product.where("name LIKE ?", "%#{params[:keywords]}%")
  end #loads app/view/store/search_results.erb
end
