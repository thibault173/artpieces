class PiecesController < ApplicationController
  before_action :set_piece, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @pieces = Piece.all
  end

  def show

  end

  def new
    @piece = Piece.new
  end

  def create
    @piece = Piece.new(piece_params)
    @piece.user = current_user
    if @piece.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit

  end

  def update
    @piece.update(piece_params)
    if @piece.save
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @piece.destroy
    redirect_to root_path
  end

  private

  def piece_params
    params.require(:piece).permit(:name, :description, :price)
  end

  def set_piece
    @piece = Piece.find(params[:id])
  end
end
