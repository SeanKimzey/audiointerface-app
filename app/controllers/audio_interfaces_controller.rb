class AudioInterfacesController < ApplicationController
  def index
    interfaces = Interface.all
    render json: interfaces.as_json
  end

  def show
    interface = Interface.find_by(id: params[:id])
    render json: interface.as_json
  end
end
