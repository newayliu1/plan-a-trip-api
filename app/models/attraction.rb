# frozen_string_literal: true
class Attraction < ApplicationRecord
  belongs_to :trip
  validates :name, :address, :time_spend, :trip, presence: true
end
