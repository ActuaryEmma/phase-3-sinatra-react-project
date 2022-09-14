class CreatePoemAuthors < ActiveRecord::Migration[6.1]
  def change
    create_table :poem_authors do |t|
      
      t.string :name
      t.string :publication
      t.string :major_achievements

    end
  end
end
