# frozen_string_literal: true

class EntrySerializer < ActiveModel::Serializer
  attributes :id, :title, :backstory, :stopper, :status, :date_added, :deleted_flag

  def user
    object.user.id
  end

  # , :editable
  # def editable
  #   scope == object.user
  # end
end
