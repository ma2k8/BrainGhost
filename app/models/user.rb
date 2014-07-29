class User < ActiveRecord::Base
  has_many :scores
  validates :user_id, presence:  {message: "空の値は受け付けられません。"}
  validates :user_name, presence:  {message: "空の値は受け付けられません。"}
end
