class CreateImages < ActiveRecord::Migration[7.0]
  def change
    create_table :images do |t|
      t.string :name
      t.string :file
      t.float :ave_valueva
      t.belongs_to :theme_id , index: true, foreign_key: true

      t.timestamps
    end
  end
end
