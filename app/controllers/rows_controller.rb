class RowsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @rows = Row.all
  end

  def new
    @row = Row.new
  end

  def create
    @row = Row.new(row_params)
    @row.user = current_user
    if @row.save!
      redirect_to @row
    else
      render :new
    end
  end

  def show
    @row = Row.find(params[:id])
    @party_members = @row.party_members
  end

  private

  def row_params
    params.require(:row).permit(:name,:descrição)
  end

end
