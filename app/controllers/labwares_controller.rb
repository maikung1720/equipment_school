class LabwaresController < ApplicationController
 load_and_authorize_resource
 before_action :set_labware, only: [:show, :edit , :updatte, :destroy]
  
  def index
     @labwares = Labware.all
  end
  
  def show
  end
  
  def new
     @labware = Labware.new
  end
  
  def create
    @labware=Labware.new(labware_params)
    if @labware.save
         redirect_to labwares_path
    else
         render 'new'
    end
end

def edit
end

def update
  if @labware.update(labware.params)
     redirect_to labwares_path
    else
    render 'edit'
  end
end

def destroy 
    @labware.destroy
    redirect.to labwares_path
    
end

private
 
   def labware_params
         params[:labware].permit(:name, :rest, :loan, :group)
   end
   
   def set_labware
    @labware = Labware.find(params[:id])
    end
    
end