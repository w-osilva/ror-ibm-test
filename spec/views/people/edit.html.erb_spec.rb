require 'rails_helper'

RSpec.describe "people/edit", type: :view do
  before(:each) do
    @person = assign(:person, FactoryGirl.create(:person))
  end

  it "renders the edit person form" do
    render

    assert_select "form[action=?][method=?]", person_path(@person), "post" do

      assert_select "input#person_first_name[name=?]", "person[first_name]"

      assert_select "input#person_last_name[name=?]", "person[last_name]"

      assert_select "input#person_address_id[name=?]", "person[address_id]"

      assert_select "input#person_company_id[name=?]", "person[company_id]"

      assert_select "input#person_contact_id[name=?]", "person[contact_id]"
    end
  end
end
