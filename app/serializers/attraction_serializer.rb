# frozen_string_literal: true
class AttractionSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :time_spend, :notes, :trip

  def trip
    object.trip.id
  end
end
