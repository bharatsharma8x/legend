class LegendsController < ApplicationController
    def index
      @legends = Legend.all
    end
  
    def new
      @legend = Legend.new
    end
  
    def create
      @legend = Legend.new(legend_params)
      if @legend.save
        redirect_to @legend
      else
        render 'new'
      end
    end
  
    def show
      @legend = Legend.find(params[:id])
    end

    def edit
        @legend = Legend.find(params[:id])
    end
  
    private
  
    def legend_params
      params.require(:legend).permit(:name, :image)
    end
  end
  