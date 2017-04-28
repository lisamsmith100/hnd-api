# frozen_string_literal: true
class Entry < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  # validations
  validates :title, :user, presence: true
end
#
# class Example < ApplicationRecord
#   belongs_to :user
#   validates :text, :user, presence: true
# end
