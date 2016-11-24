module Adapters
  class Address
    
    def self.csv(data, state, city)
      {
        address: data['address'],
        county: data['county'],
        zip: data['zip'],
        city: city,
        state: state
      }
    end
    
  end
end