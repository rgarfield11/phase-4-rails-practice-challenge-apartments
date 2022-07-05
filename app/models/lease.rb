class Lease < ApplicationRecord
  belongs_to :tenant
  belongs_to :apartment

  validates :rent, numericality: { greater_than: 200 }
end
