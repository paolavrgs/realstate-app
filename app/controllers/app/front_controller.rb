module App
  class FrontController < ::ApplicationController
    layout 'app/layouts/application'

    def index
      @products = Product.all
    end

    def products
      @products = Product.all
    end

    def product
      @product = Product.find(params[:product_id])
      @cotization = Cotization.new
    end
   end
end