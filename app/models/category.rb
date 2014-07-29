class Category < ActiveRecord::Base
  validates :category_name, presence: {message: "空の値は受け付けられません。"}
end
