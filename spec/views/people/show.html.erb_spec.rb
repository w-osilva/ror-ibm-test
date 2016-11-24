require 'rails_helper'

RSpec.describe "people/show", type: :view do
  before(:each) do
    @person = assign(:person, FactoryGirl.create(:person))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First name/)
    expect(rendered).to match(/Last name/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Company/)
    expect(rendered).to match(/Contact/)
  end
end
