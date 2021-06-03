class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :internal_id
      t.string :official_name

      t.timestamps
    end
  end
end
