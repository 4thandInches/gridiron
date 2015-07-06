class AddFilm < ActiveRecord::Migration
  def change
    add_attachment :videos, :film
  end
end
