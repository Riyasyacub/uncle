class CreateEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :entries do |t|
      field :name, type:Array, default:[] 
      field :price, type:Integer
      field :from, type:String
      field :to, type:String
      field :s_type, type:String
      field :service_name, type:String
      field :id_number, type:String
      field :phone, type:String
      field :paid, type:Integer
      t.timestamps
    end
  end
end
