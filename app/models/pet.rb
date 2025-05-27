class Pet < ApplicationRecord
  SPECIES =  ["dog", "cat", "turtle", "ferret"]
  validates :name, presence: true
  # validates :species, inclusion: { in: ["dog", "cat", "turtle", "ferret"] }
  validates :species, inclusion: { in: SPECIES }
end
