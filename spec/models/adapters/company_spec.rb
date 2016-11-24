require 'rails_helper'

RSpec.describe Adapters::Company, type: :adapter do
  DatabaseCleaner.clean_with(:deletion)
  
  describe "#csv" do
    
    context "When the method receives a row from the csv file" do
  
      subject(:row) { csv_row_sample }
      
      it "should return an adapted hash" do
        expect(Adapters::Company.csv(row)).to include(name: row['company_name'])
      end
      
    end
    
  end
  
end