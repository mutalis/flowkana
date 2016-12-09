# weight adjustments table
class CreateWads < ActiveRecord::Migration[5.0]
  def change
    create_table :wads do |t|
      t.float :weight, default: 0
      t.float :diference, default: 0
      t.references :strain, foreign_key: true

      t.timestamps
    end
  end
end
