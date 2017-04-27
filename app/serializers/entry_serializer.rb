class EntrySerializer < ActiveModel::Serializer
  attributes :id, :title, :backstory, :stopper, :status, :date_added
end
