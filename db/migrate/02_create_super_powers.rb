class CreateSuperPowers < ActiveRecord::Migration[5.0]
  def change
    create_table :super_powers do |t|
      t.integer :hero_id
      t.integer :power_id
    end
  end
end
