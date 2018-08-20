class CreatePieceTags < ActiveRecord::Migration[5.2]
  def change
    create_table :piece_tags do |t|
      t.references :tag, foreign_key: true
      t.references :piece, foreign_key: true

      t.timestamps
    end
  end
end
