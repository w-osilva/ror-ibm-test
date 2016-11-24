module Adapters
  class Company
    
    def self.csv(data)
      {
        name: data['company_name']
      }
    end
    
  end
end