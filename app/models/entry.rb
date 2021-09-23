class Entry
  include Mongoid::Document
  include Mongoid::Timestamps 
  
  field :name, type:Array, default:[] 
      field :price, type:Integer
      field :from, type:String
      field :to, type:String
      field :s_type, type:String
      field :service_name, type:String
      field :id_number, type:String
      field :phone, type:String
      field :paid, type:Integer
  
end
