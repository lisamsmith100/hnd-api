class Entry < ApplicationRecord
  # belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  # add in later
  # validations
  validates :title, presence: true
end
