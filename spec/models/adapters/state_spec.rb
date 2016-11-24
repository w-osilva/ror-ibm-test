require 'rails_helper'

RSpec.describe Adapters::State, type: :adapter do
  
  describe "#csv" do
    
    context "When the method receives a row from the csv file" do
  
      subject(:row) { csv_row_sample }
      
      it "should return an adapted hash" do
        expect(Adapters::State.csv(row)).to include(name: nil, abbreviation: row['state'])
      end
      
    end
    
  end
  
end