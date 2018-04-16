class AddSourceThemeToContents < ActiveRecord::Migration[5.1]
  def change
    add_column :contents, :source_theme, :string
  end
end
