class CreateHeros < ActiveRecord::Migration[5.0]
  def change
    create_table :heros do |t|
      t.string :name
      t.string :strength
      t.string :weakness
      t.integer :power_level
    end
  end
end
