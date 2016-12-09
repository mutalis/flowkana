# Strains table
class CreateStrains < ActiveRecord::Migration[5.0]
  def change
    create_table :strains do |t|
      t.string :name
      t.string :family
      t.float :thc
      t.float :cbd
      t.float :purchase_price_per_gram
      t.float :weight, default: 0

      t.timestamps
    end
  end
end
