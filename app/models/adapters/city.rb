module Adapters
  class City
    
    def self.csv(data, state)
      {
        name: data['city'],
        state: state
      }
    end
    
  end
end