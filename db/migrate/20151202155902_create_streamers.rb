class CreateStreamers < ActiveRecord::Migration
  def change
    create_table :streamers do |t|
      t.string :username
      t.string :twitch
      t.string :youtube

      t.timestamps null: false
    end
  end
end
