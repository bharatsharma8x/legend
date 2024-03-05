class TemplatesController < ApplicationController
    def index
      @templates = Template.all
    end
  
    def new
      @template = Template.new
    end
  
    def create
      @template = Template.new(template_params)
      if @template.save
        redirect_to @template
      else
        render 'new'
      end
    end
  
    def show
      @template = Template.find(params[:id])
    end
    
    def edit
      @template = Template.find(params[:id])
    end
  
    private
  
    def template_params
      params.require(:template).permit(:name, :image)
    end
  end
  