class CreateCommets < ActiveRecord::Migration
  def change
    create_table :commets do |t|
      t.string :author_name
      t.text :body
      t.references :article, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
