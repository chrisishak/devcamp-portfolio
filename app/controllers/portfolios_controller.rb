class PortfoliosController < ApplicationController
	def index
		@portfolio_items = Portfolio.all
	end

	def new
		@portfolio_item = Portfolio.new
	end

	def show
		@portfolio_items = Portfolio.find(params[:id])
	end


    def create
      @blog = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))

      respond_to do |format|
        if @blog.save
          format.html { redirect_to portfolios_path, notice: "Your portfolio is now live" }
        
        else
          format.html { render :new }
        end
      end
    end
   
   def edit
   	 @portfolio_item = Portfolio.find(params[:id])
   end

   def update
   	 @portfolio_item = Portfolio.find(params[:id])

    respond_to do |format|
      if @portfolio_item.update(params.require(:portfolio).permit(:title, :subtitle, :body))
        format.html { redirect_to portfolios_path(@blog), notice: "The record was successfully updated." }
        format.json { render :show, status: :ok, location: @blog }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

    def destroy
    # Perform the lookup	
    @portfolio_item = Portfolio.find(params[:id])

    # Destroy/delete the record
    @portfolio_item.destroy

    # Redirect
    respond_to do |format|
      format.html { redirect_to portfolios_path, notice: "Portfolio Item was successfully destroyed." }
    end
  end


end
