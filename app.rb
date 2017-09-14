require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/address_book')
require('pry')

get('/') do
  @input = Contact.all()
  erb(:input)
end

post('/') do
  first_name = params['first_name']
  last_name = params['last_name']
  job_title = params['job_title']
  company = params['company']
  contact_type = params['contact_type']
  contact = Contact.new(:first_name=> first_name, :last_name=> last_name, :job_title=> job_title, :company=> company, :contact_type=> contact_type)
  contact.save
  @input = Contact.all()
  erb(:input)
end

get('/contacts/:id') do
  @contact = Contact.find(params[:id])
  erb(:output)
end
