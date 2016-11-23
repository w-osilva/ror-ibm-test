require 'rails_helper'

RSpec.describe "people/show", type: :view do
  before(:each) do
    @person = assign(:person, Person.create!(
      :firs_name => "Firs Name",
      :last_name => "Last Name",
      :address => nil,
      :company => nil,
      :contact => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Firs Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
