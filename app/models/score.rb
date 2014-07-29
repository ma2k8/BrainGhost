class Score < ActiveRecord::Base
  belongs_to :task
  belongs_to :category
  # belongs_to :user
  belongs_to :patient, :class_name => 'user_id', :primary_key => 'user_id', :foreign_key => 'user_id'
  scope :list, -> { group_by(category_id, question_id, user_id) }
end
