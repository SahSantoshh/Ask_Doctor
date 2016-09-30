class CreateProblems < ActiveRecord::Migration[5.0]
  def change
    create_table :problems do |t|
      t.string :title
      t.text :complaint
      t.text :examination
      t.text :advice
      t.string :slug

      t.timestamps
    end
    add_index :problems, :slug, unique: true
  end
end
