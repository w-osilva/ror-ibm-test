require 'rails_helper'

RSpec.describe "people/index", type: :view do
  before(:each) do
    assign(:people, [
      Person.create!(
        :firs_name => "Firs Name",
        :last_name => "Last Name",
        :address => nil,
        :company => nil,
        :contact => nil
      ),
      Person.create!(
        :firs_name => "Firs Name",
        :last_name => "Last Name",
        :address => nil,
        :company => nil,
        :contact => nil
      )
    ])
  end

  it "renders a list of people" do
    render
    assert_select "tr>td", :text => "Firs Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
