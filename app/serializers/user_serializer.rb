# frozen_string_literal: true
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :trips, :attractions
  def trips
    object.trips.pluck(:id)
  end

  def attractions
    object.attractions.pluck(:id)
  end
end
