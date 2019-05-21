class OperationsController < ApplicationController
  before_action :set_value, only: [:calculate,:index]

  def index
  end

  def calculate
    begin
      @value = eval(@value)
      flash[:notice] = "Cálculo efetuado com sucesso!"
    rescue Exception => exc
        @value = ""
        flash[:alert] = "Função inválida !"
    end
    render :index
  end

  def set_value
    if (params[:Input] == "" || params[:Input].nil?)
      @value="0"
    else
      @value = params[:Input]
    end
  end
end
