class Team < ApplicationRecord
  has_many :members
  has_many :users, through: :members
  has_many :boards

  def self.my_teams(user_id)
    my_teams = Team.all.find_all do |team|
      team.users.any? do |user|
        user.id == user_id.to_i
      end
    end
  end

end
