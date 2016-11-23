require 'rails_helper'

RSpec.describe State, type: :model do
  
  describe "validations" do
    
    context "data imported from csv file" do
      
      subject(:state) { FactoryGirl.build(:state) }
      
      it "field name may be null" do
        state.name = nil
        expect(state.save).to be true
      end

      it "field abbreviation can not be null" do
        state.abbreviation = nil
        expect(state.save).to be false
      end
      
    end
    
  end
  
end
