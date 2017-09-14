require('rspec')
require('address_book')

describe('Contact') do
  describe("Contact") do
  before() do
    Contact.clear()
  end
  describe('.all') do
    it('is empty at first') do
      expect(Contact.all()).to(eq([]))
    end
  end

describe('#save') do
  it('saves an item to the list of items') do
    contact = Contact.new({:first_name=> 'Sebastian', :last_name=> 'Biggs-McIntosh', :job_title=> 'professional-thrower', :company=> 'GrandmasPlace', :contact_type=> 'professional-pooper', :zip=> '65490' :city=> 'Portland' :phone_number=> '8012269022'})
    contact.save()
    expect(contact.first_name()).to(eq('Sebastian'))
   end
 end

 describe('.clear') do
   it('clears all contacts from the list') do
    contact = Contact.new({:first_name=> 'Sebastian', :last_name=> 'Biggs-McIntosh', :job_title=> 'professional-thrower', :company=> 'GrandmasPlace', :contact_type=> 'professional-pooper', :zip=> '65490' :city=> 'Portland' :phone_number=> '8012269022'})
     contact.save()
     Contact.clear()
     expect(Contact.all()).to(eq([]))
   end
 end



end
