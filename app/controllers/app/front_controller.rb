module App
  class FrontController < ::ApplicationController
    layout 'app/layouts/application'

    def index
      @products = Product.all
    end

   end
end