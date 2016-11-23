module Adapters
  class Contact
    
    def self.csv(data)
      {
        phone_1: data['phone_1'],
        phone_2: data['phone_2'],
        email: data['email'],
        web: data['web']
      }
    end
    
  end
end