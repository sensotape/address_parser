class Flat < ApplicationRecord
  validates :address, presence: true, allow_blank: false

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  after_validation :parse_address, if: :will_save_change_to_address?

  def parse_address
    result = Geocoder.search(address).first
    self.formatted_address = result.formatted_address
    self.street_number = result.street_number if result.street_number
    self.street = result.route if result.route
    self.postal_code = result.postal_code
    if result.address_components.any? { |h| h["types"].include?("sublocality") }
      self.district = result.address_components.find { |h| h["types"].include?("sublocality") }["long_name"]
    end
    self.city = result.city
    self.state = result.state
    self.country = result.country
  end
end
