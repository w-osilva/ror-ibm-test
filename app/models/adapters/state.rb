module Adapters
  class State
    
    def self.csv(data)
      {
        name: nil,
        abbreviation: data['state']
      }
    end
    
  end
end