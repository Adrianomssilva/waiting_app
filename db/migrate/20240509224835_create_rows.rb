class CreateRows < ActiveRecord::Migration[7.1]
  def change
    create_table :rows do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.text :descrição

      t.timestamps
    end
  end
end
