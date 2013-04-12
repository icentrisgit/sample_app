require 'spec_helper'

describe "employees/new" do
  before(:each) do
    assign(:employee, stub_model(Employee,
      :emp_id => "MyString",
      :first_name => "MyString",
      :last_name => "MyString",
      :gender => "MyString",
      :email_id => "MyString",
      :address => "MyText",
      :phone_number => 1,
      :pan_number => 1,
      :bank_acc_no => 1,
      :designation => "MyString",
      :grossCTC => "MyString",
      :status => "MyString"
    ).as_new_record)
  end

  it "renders new employee form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => employees_path, :method => "post" do
      assert_select "input#employee_emp_id", :name => "employee[emp_id]"
      assert_select "input#employee_first_name", :name => "employee[first_name]"
      assert_select "input#employee_last_name", :name => "employee[last_name]"
      assert_select "input#employee_gender", :name => "employee[gender]"
      assert_select "input#employee_email_id", :name => "employee[email_id]"
      assert_select "textarea#employee_address", :name => "employee[address]"
      assert_select "input#employee_phone_number", :name => "employee[phone_number]"
      assert_select "input#employee_pan_number", :name => "employee[pan_number]"
      assert_select "input#employee_bank_acc_no", :name => "employee[bank_acc_no]"
      assert_select "input#employee_designation", :name => "employee[designation]"
      assert_select "input#employee_grossCTC", :name => "employee[grossCTC]"
      assert_select "input#employee_status", :name => "employee[status]"
    end
  end
end
