class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @pieces_sample = Piece.all[0..2]
  end
end
