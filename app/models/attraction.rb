# frozen_string_literal: true
class Attraction < ApplicationRecord
  belongs_to :trip, inverse_of: :attractions
  validates :name, :address, :time_spend, :trip, presence: true
end
