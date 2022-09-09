class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :name
      t.integer :genre_id
      t.integer :year
      t.string :comment
    end
  end
end
