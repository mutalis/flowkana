class CreateFarms < ActiveRecord::Migration[5.0]
  def change
    create_table :farms do |t|
      t.string :name
      t.string :county

      t.timestamps
    end

    add_reference :strains, :farm, index: true
  end
end
