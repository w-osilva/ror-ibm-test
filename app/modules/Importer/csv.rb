module Importer
  class Csv
    require 'csv'
    
    def initialize(file_path)
      file_name = file_path.split("/").last
      extension = File.extname(file_name)
      raise ArgumentError.new( "The file must be a csv") unless extension == '.csv'
      @file_path = file_path
    end
    
    def run
      read
      parse
      save
    end
    
    private
    def read
      @csv_text = File.read(@file_path)
    end

    def parse
      @csv = CSV.parse(@csv_text, :headers => true)
    end

    def save
      @csv.each do |row|
        # state, city, address, company, contact, person
        
        state_data = Adapters::State.csv(row.to_hash)
        city_data = Adapters::City.csv(row.to_hash)
        address_data = Adapters::Address.csv(row.to_hash)
        company_data = Adapters::Company.csv(row.to_hash)
        contact_data = Adapters::Contact.csv(row.to_hash)
        person_data = Adapters::Person.csv(row.to_hash)
        
      end
    end
        
  end
end