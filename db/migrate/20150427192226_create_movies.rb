class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.text :title
      t.text :youtube_embed_id
      t.text :summary
      t.text :thumbnail


      t.timestamps
    end
  end
end
