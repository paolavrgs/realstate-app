module App
  class CotizationsController < FrontController
    before_action :set_cotization, only: [:show, :edit, :update, :destroy]
  
    def create
      @cotization = Cotization.new(cotization_params)
  
      respond_to do |format|
        if @cotization.save
          format.html { redirect_to product_path(@cotization.product), notice: 'Su producto ha sido cotizado, pronto recibirá un correo de nuestra parte.' }
          format.json { render :show, status: :created, location: @cotization }
        else
          format.html { redirect_to product_path(@cotization.product), notice: "Error al procesar su solicitud"  }
          format.json { render json: @cotization.errors, status: :unprocessable_entity }
        end
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_cotization
        @cotization = Cotization.find(params[:id])
      end
  
      # Never trust parameters from the scary internet, only allow the white list through.
      def cotization_params
        params.require(:cotization).permit(:name, :email, :phone, :message, :product_id)
      end
  end  
end
