class Post < ApplicationRecord
  validates_presence_of :text

  belongs_to :user
end
