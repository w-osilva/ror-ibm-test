module Importer
  class Csv
    require 'csv'
    
    def initialize(file_path)
      file_name = file_path.split("/").last
      extension = File.extname(file_name)
      raise ArgumentError.new( "The file must be a csv") unless extension == '.csv'
      @file_path = file_path
    end
    
    def run(from_rake: false)
      @from_rake = from_rake
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
        ActiveRecord::Base.transaction do
          # state, city, address, company, contact, person
  
          state_data = Adapters::State.csv(row.to_hash)
          state = ::State.find_or_create_by(state_data)
          check_object(state, :State)
  
          city_data = Adapters::City.csv(row.to_hash, state)
          city = ::City.find_or_create_by(city_data)
          check_object(city, :City)
  
          address_data = Adapters::Address.csv(row.to_hash, state, city)
          address = ::Address.find_or_create_by(address_data)
          check_object(address, :Address)
  
          company_data = Adapters::Company.csv(row.to_hash)
          company = ::Company.find_or_create_by(company_data)
          check_object(company, :Company)
  
          contact_data = Adapters::Contact.csv(row.to_hash)
          contact = ::Contact.find_or_create_by(contact_data)
          check_object(contact, :Contact)
  
          person_data = Adapters::Person.csv(row.to_hash, company, address, contact)
          person = ::Person.find_or_create_by(person_data)
          check_object(person, :Person)
        end
        
        # display a dot in the console at each iteration
        print (".") if @from_rake
      end
      puts if @from_rake
    end
    
    def check_object(object, class_sym)
      raise "Invalid instance of object" unless object.instance_of? class_eval(class_sym.to_s)
    end
        
  end
end