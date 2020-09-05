class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :organization, :position, :location, :profile_img, :description, :email, :username, :address, :age
end