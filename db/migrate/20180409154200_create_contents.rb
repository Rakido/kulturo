class CreateContents < ActiveRecord::Migration[5.1]
  def change
    create_table :contents do |t|
      t.string :kind
      t.integer :duration
      t.string :title
      t.string :theme
      t.string :source
      t.string :url
      t.string :image_url
      t.date :publication_date
      t.string :description

      t.timestamps
    end
  end
end
