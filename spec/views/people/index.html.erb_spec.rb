require 'rails_helper'

RSpec.describe "people/index", type: :view do
  before(:each) do
    assign(:people, [
      FactoryGirl.create(:person),
      FactoryGirl.create(:person),
    ])
  end

  it "renders a list of people" do
    render
    assert_select "tbody>tr", :count => 2
  end
end
