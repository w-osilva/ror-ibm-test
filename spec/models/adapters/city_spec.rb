require 'rails_helper'

RSpec.describe Adapters::City, type: :adapter do
  DatabaseCleaner.clean_with(:deletion)
  
  describe "#csv" do
    
    context "When the method receives a row from the csv file" do
      
      subject(:row) { csv_row_sample }

      let(:state){ FactoryGirl.create(:state, Adapters::State.csv(row))  }
      
      it "should return an adapted hash" do
        expect(Adapters::City.csv(row, state)).to include(name: row['city'], state: state)
      end
      
    end
    
  end
  
end