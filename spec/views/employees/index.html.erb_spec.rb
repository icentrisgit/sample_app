require 'spec_helper'

describe "employees/index" do
  before(:each) do
    assign(:employees, [
      stub_model(Employee,
        :emp_id => "Emp",
        :first_name => "First Name",
        :last_name => "Last Name",
        :gender => "Gender",
        :email_id => "Email",
        :address => "MyText",
        :phone_number => 1,
        :pan_number => 2,
        :bank_acc_no => 3,
        :designation => "Designation",
        :grossCTC => "Gross Ctc",
        :status => "Status"
      ),
      stub_model(Employee,
        :emp_id => "Emp",
        :first_name => "First Name",
        :last_name => "Last Name",
        :gender => "Gender",
        :email_id => "Email",
        :address => "MyText",
        :phone_number => 1,
        :pan_number => 2,
        :bank_acc_no => 3,
        :designation => "Designation",
        :grossCTC => "Gross Ctc",
        :status => "Status"
      )
    ])
  end

  it "renders a list of employees" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Emp".to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Designation".to_s, :count => 2
    assert_select "tr>td", :text => "Gross Ctc".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
