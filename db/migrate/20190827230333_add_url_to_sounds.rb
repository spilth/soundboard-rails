class AddUrlToSounds < ActiveRecord::Migration[5.2]
  def change
    add_column :sounds, :url, :string
  end
end
