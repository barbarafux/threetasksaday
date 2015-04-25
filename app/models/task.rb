class Task < ActiveRecord::Base
  belongs_to :user

  validates :task, presence: true,
  				   uniqueness: {:scope => :user_id, case_sensitive: false, message: "already exists." }

  validate :on => :create do
    if user && user.tasks.length > 2
      errors.add(:base, "Finish a task first.")
    end
  end

end
