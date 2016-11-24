require 'rails_helper'

RSpec.describe Adapters::Address, type: :adapter do
  DatabaseCleaner.clean_with(:deletion)
  
  describe "#csv" do
    
    context "When the method receives a row from the csv file" do
      
      subject(:row) { csv_row_sample }

      let(:state){ FactoryGirl.create(:state, Adapters::State.csv(row))  }
      let(:city){ FactoryGirl.create(:city, Adapters::City.csv(row, state))  }
      
      it "should return an adapted hash" do
        expect(Adapters::Address.csv(row, state, city)).to include(
          address: row['address'],
          county: row['county'],
          zip: row['zip'],
          city: city,
          state: state
        )
      end
      
    end
    
  end
  
end