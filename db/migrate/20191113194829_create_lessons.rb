class CreateLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :lessons do |t|
      t.string :title
      t.string :subtitle
      t.decimal :cost
      t.integer :section_id
      t.timestamps
    end
    add_index :lessons, :section_id
  end
end
