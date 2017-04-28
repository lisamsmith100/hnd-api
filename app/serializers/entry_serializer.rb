# frozen_string_literal: true
class EntrySerializer < ActiveModel::Serializer
  attributes :id, :title, :backstory, :stopper, :status, :date_added, :deleted_flag, :editable

  def user
    object.user.id
  end

  def editable
    scope == object.user
  end
end
