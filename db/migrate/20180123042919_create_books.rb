class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.references :user, foreign_key: true
      t.boolean :agreement, default: false

      t.timestamps
    end
  end
end
