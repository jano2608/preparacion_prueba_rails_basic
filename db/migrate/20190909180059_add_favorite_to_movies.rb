class AddFavoriteToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :favorite, :boolean, default: false
  end
end
