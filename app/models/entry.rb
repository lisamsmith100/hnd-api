# frozen_string_literal: true
class Entry < ApplicationRecord
  belongs_to :user
  # , class_name: 'User', foreign_key: 'user_id'
  # validations
  validates :title, presence: true
  validates :user_id, presence: true
end
#
# class Example < ApplicationRecord
#   belongs_to :user
#   validates :text, :user, presence: true
# end
