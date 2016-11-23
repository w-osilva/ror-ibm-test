module Adapters
  class Contact
    
    def self.csv(data)
      {
        phone_1: data['phone1'],
        phone_2: data['phone2'],
        email: data['email'],
        web: data['web']
      }
    end
    
  end
end