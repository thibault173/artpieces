class PagesController < ApplicationController
  def home
    @pieces_sample = Piece.all[0..2]
  end
end
