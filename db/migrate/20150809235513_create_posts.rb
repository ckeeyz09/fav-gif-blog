class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :gif_url
      t.references :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
