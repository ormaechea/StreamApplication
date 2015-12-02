class CreateStreams < ActiveRecord::Migration
  def change
    create_table :streams do |t|
      t.integer :stream_id
      t.string :actual_start_time
      t.string :site
      t.string :title
      t.string :url
      t.integer :viewers

      t.timestamps null: false
    end
  end
end
