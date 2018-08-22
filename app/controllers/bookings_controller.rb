class BookingsController < ApplicationController
  before_action :set_piece, only: [:new, :create]

  def index
    @pieces_rented = current_user.rent_pieces
    # @pieces_owned = current_user.own_pieces
    @my_pieces_reserved = current_user.my_pieces_reserved
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.piece = @piece
    @booking.user = current_user
    if @booking.save
      redirect_to piece_path(@piece)
    else
      render :new
    end
  end

  def update
  end

  def destroy
  end

  def set_piece
    @piece = Piece.find(params[:piece_id])
  end

  def booking_params
    params.require(:booking).permit(:start_on, :end_on)
  end
end
