module Adapters
  class Person
    
    def self.csv(data, company, address, contact)
      {
        first_name: data['first_name'],
        last_name: data['last_name'],
        company: company,
        address: address,
        contact: contact
      }
    end
    
  end
end