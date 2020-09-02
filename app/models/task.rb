class Task < ApplicationRecord
  belongs_to :board
  belongs_to :user
  has_many :comments, dependent: :destroy

  def self.resolved_tasks
    tasks = Task.all.filter do |task|
      task.resolved
    end
  end

  def self.unresolved_tasks
    tasks = Task.all.filter do |task|
      task.resolved === false
    end
  end

  def self.my_assigned_tasks(id)
    tasks = Task.all.filter do |task|
      task.owner_id === id
    end
  end

end
