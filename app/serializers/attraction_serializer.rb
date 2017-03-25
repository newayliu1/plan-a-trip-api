class AttractionSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :time_spend, :notes
end
