# frozen_string_literal: true
class Trip < ApplicationRecord
  belongs_to :user, inverse_of: :trips
  has_many :attractions, :dependent => :destroy
  validates :name, :user, presence: true
end
