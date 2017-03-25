# frozen_string_literal: true
class Trip < ApplicationRecord
  belongs_to :user
  validates :name, :user, presence: true
end
