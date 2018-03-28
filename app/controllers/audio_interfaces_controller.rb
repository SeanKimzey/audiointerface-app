class AudioInterfacesController < ApplicationController

  def index
    interfaces = Interface.all
    render json: interfaces.as_json
  end

  def show
    interface = Interface.find_by(id: params[:id])
    render json: interface.as_json
  end

  def create
    interface = Interface.new(
      brand: "Focusrite",
      model: "nonsense",
      inputs: 12,
      outputs: 4
      )

    interface.save
    render json: {message: "You added another interface"}
  end

  def update
    interface = Interface.find_by(id: params[:id])
    interface.update(
      brand: "Test",
      model: "test",
      inputs: 1234,
      outputs: 4321
      )
    interface.save
    render json: {message: "You updated this interface"}
  end

  def destroy
    interface = Interface.find_by(id: params[:id])
    interface.delete
    render json: {message: "You have deleted this interface"}
  end

end
