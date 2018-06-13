class StoreController < ApplicationController
  def index
    @products = Product.all.paginate(page: params[:page], per_page: 2)

    @search = Product.search(params[:q])
    @products = @search.result
  end
end
