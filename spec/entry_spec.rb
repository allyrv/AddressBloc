require_relative '../models/entry'

#Standard first line of an RSpec test file
RSpec.describe Entry do

	#Initialize a test structure
	describe "attributes" do
		let(:entry) {Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')}

		#Name Test
		it "responds to name" do
			expect(entry).to respond_to(:name)
		end

		it "reports its name" do
       		expect(entry.name).to eq('Ada Lovelace')
     	end

		#Phone Number Test
		it "responds to phone number" do
			expect(entry).to respond_to(:phone_number)
		end 

		it "reports its phone_number" do
       		expect(entry.phone_number).to eq('010.012.1815')
     	end
		
		#Email Test
		it "responds to email" do
			expect(entry).to respond_to(:email)
		end 

		it "reports its email" do
       		expect(entry.email).to eq('augusta.king@lovelace.com')
     	end
	end

	#Returns string? >'#to_s' as intance method
	describe "#to_s" do
		it "prints an entry as a string" do
			entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
			expected_string = "Name: Ada Lovelace\nPhone Number: 010.012.1815\nEmail: augusta.king@lovelace.com"

			expect(entry.to_s).to eq(expected_string)
		end
	end
end
