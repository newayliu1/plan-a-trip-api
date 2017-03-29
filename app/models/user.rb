# frozen_string_literal: true
class User < ApplicationRecord
  include Authentication
  has_many :trips
  has_many :attractions, through: :trips
end
