class CreateCustomerAttributes < ActiveRecord::Migration[5.2]
  def change
    create_table :customer_attributes do |t|
      t.string :name_model
      t.string :attribute_name
      t.string :attribute_type

      t.timestamps
    end
  end
end
