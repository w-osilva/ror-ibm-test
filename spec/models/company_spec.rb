require 'rails_helper'

RSpec.describe Company, type: :model do
  
  DatabaseCleaner.clean_with(:deletion)
  
  describe "validations" do
    
    context "data imported from csv file" do
      
      subject(:company) { FactoryGirl.build(:company) }
      
      it "field abbreviation can not be null" do
        company.name = nil
        expect(company.save).to be false
      end
    
    end
  
  end
  
end
