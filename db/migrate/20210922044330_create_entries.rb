class CreateEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :entries do |t|
      t.string :name, array: true
      t.integer :price
      t.string :from
      t.string :to
      t.string :s_type
      t.string :service_name
      t.string :id_number, optional: true
      t.string :phone, optional: true
      t.integer :paid, optional: true
      t.timestamps
    end
  end
end
