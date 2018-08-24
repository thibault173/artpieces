class PiecesController < ApplicationController
  before_action :set_piece, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @pieces = policy_scope(Piece)
    if params[:query].present?
      @pieces = Piece.search_by_name_and_description("#{params[:query]}")
    end
  end

  def show
    authorize(@piece)
    @piece_tag = PieceTag.new
    @booking = Booking.new
  end

  def new
    @piece = Piece.new
    authorize(@piece)
  end

  def create
    @piece = Piece.new(piece_params)
    authorize(@piece)
    @piece.user = current_user
    if @piece.save
      redirect_to piece_path(@piece)
    else
      render :new
    end
  end

  def edit
    authorize(@piece)
  end

  def update
    @piece.update(piece_params)
    authorize(@piece)
    if @piece.save
      redirect_to piece_path(@piece)
    else
      render :edit
    end
  end

  def destroy
    authorize(@piece)
    @piece.destroy
    redirect_to root_path
  end

  private

  def piece_params
    params.require(:piece).permit(:name, :description, :price, :photo, { :tag_ids => [] })
  end

  def set_piece
    @piece = Piece.find(params[:id])
  end
end
