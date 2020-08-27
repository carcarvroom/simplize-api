class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :organization, :location, :profile_img, :description, :email, :username
