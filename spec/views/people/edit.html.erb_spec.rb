require 'rails_helper'

RSpec.describe "people/edit", type: :view do
  before(:each) do
    @person = assign(:person, Person.create!(
      :firs_name => "MyString",
      :last_name => "MyString",
      :address => nil,
      :company => nil,
      :contact => nil
    ))
  end

  it "renders the edit person form" do
    render

    assert_select "form[action=?][method=?]", person_path(@person), "post" do

      assert_select "input#person_firs_name[name=?]", "person[firs_name]"

      assert_select "input#person_last_name[name=?]", "person[last_name]"

      assert_select "input#person_address_id[name=?]", "person[address_id]"

      assert_select "input#person_company_id[name=?]", "person[company_id]"

      assert_select "input#person_contact_id[name=?]", "person[contact_id]"
    end
  end
end
