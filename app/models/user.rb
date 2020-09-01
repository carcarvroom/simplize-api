class User < ApplicationRecord
    has_many :teams
    has_many :boards
    has_many :tasks
    has_many :comments

    has_secure_password
    validates :username, uniqueness: true
    validates :description, length: { maximum: 500, too_long: "Maximum of 500 characters." }

    # two custom methods
end
