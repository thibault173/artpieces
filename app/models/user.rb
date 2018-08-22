class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings
  # Un user peut avoir deux pieces qui lui sont liées :
  ## Les siennes
  ## Celles qu'il souhait louer
  ### Donc on va crééer des connexions avec un nommage particulier

  # Lorsqu'il y a une connexion à travers une table, on précise la source dans la table la plus éloignée
  has_many :rent_pieces, through: :bookings, source: :piece
  # Lorque la table est en direct, il suffit de préciser le nom que l'on substitue
  # Je défini le nom du model que je remplace
  has_many :own_pieces, class_name: 'Piece'
  # J'accède à mes objets pour lesquels il y a une réservation
  has_many :my_pieces_reserved, through: :own_pieces, source: :bookings
end
