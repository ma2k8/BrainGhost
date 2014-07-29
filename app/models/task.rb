class Task < ActiveRecord::Base
  has_many :scores
  validates :title, presence:  {message: "空の値は受け付けられません。"}
end
