# frozen_string_literal: true
class TripSerializer < ActiveModel::Serializer
  attributes :id, :name, :user, :attractions

  def user
    object.user.id
  end

  def attractions
    object.attractions.pluck(:id)
  end
end
