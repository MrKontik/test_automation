class CreateValues < ActiveRecord::Migration[7.0]
  def change
    create_table :values do |t|
      t.belongs_to :user , index: true, foreign_key: true
      t.belongs_to :image , index: true, foreign_key: true
      t.integer :value

      t.timestamps
    end
  end
end
