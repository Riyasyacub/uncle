class CreateMoney < ActiveRecord::Migration[6.1]
  def change
    create_table :money do |t|
      t.string :name
      t.string :company
      t.string :from
      t.string :country
      t.string :acc_no
      t.string :ifsc
      t.string :aadhar_no
      t.string :pan_no
      t.integer :amount
      t.string :address
      t.string :id_no
      t.string :phone
      t.timestamps
    end
  end
end
