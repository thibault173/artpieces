class PiecesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @piece = Piece.new
  end

  def create
    @piece = Piece.new(piece_params)
    if @piece.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def piece_params
    params.require(:piece).permit(:name, :description, :price)
  end
end
