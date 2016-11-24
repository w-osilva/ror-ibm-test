require 'rails_helper'

RSpec.describe Adapters::Person, type: :adapter do
  DatabaseCleaner.clean_with(:deletion)
  
  describe "#csv" do
    
    context "When the method receives a row from the csv file" do
      
      subject(:row) { csv_row_sample }
            
      let(:state){ FactoryGirl.create(:state, Adapters::State.csv(row))  }
      let(:city){ FactoryGirl.create(:city, Adapters::City.csv(row, state))  }
      let(:address){ FactoryGirl.create(:address, Adapters::Address.csv(row, state, city)) }
      let(:company){ FactoryGirl.create(:company, Adapters::Company.csv(row)) }
      let(:contact){ FactoryGirl.create(:contact, Adapters::Contact.csv(row)) }
      
      it "should return an adapted hash" do
        expect(Adapters::Person.csv(row, company, address, contact)).to include(
          first_name: row['first_name'],
          last_name: row['last_name'],
          company: company,
          address: address,
          contact: contact,
        )
      end
      
    end
    
  end
  
end