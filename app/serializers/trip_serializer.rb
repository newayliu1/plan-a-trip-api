# frozen_string_literal: true
class TripSerializer < ActiveModel::Serializer
  attributes :id, :name, :user

  def user
    object.user.id
  end
end
