require "minitest/autorun"
require_relative "../lib/employee"

describe Employee do
	it "knows his name" do
		Employee.new.must_respond_to :name
	end

	it "needs to go to the chief and ask for the department name" do
		skip
		department = Department.new "Software Development"

		Employee.new(chief: chief).department_name.must_equal "Software Development"
	end
end