class User
  include Mongoid::Document
  include Mongoid::Timestamps

  field :username, type: String
  field :password, type: String
  field :address1, type: String
  field :address2, type: String
  field :contact,  type: String

end
