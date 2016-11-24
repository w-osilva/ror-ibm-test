require 'rails_helper'

RSpec.describe Adapters::Contact, type: :adapter do
  DatabaseCleaner.clean_with(:deletion)
  
  describe "#csv" do
    
    context "When the method receives a row from the csv file" do
  
      subject(:row) { csv_row_sample }
      
      it "should return an adapted hash" do
        expect(Adapters::Contact.csv(row)).to include(
          phone_1: row['phone1'],
          phone_2: row['phone2'],
          email: row['email'],
          web: row['web'],
        )
      end
      
    end
    
  end
  
end