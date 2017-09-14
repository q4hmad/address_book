class Contact

  @@book = []

  attr_reader :id
  attr_accessor(:first_name, :last_name, :job_title, :company, :contact_type, :zip)

  def initialize(attributes)
    @first_name = attributes.fetch(:first_name)
    @last_name = attributes.fetch(:last_name)
    @job_title = attributes.fetch(:job_title)
    @company = attributes.fetch(:company)
    @contact_type = attributes.fetch(:contact_type)
    @id = @@book.length + 1
    @zip = attributes.fetch(:zip)

  end

  def self.all()
    @@book
  end

  def save()
    @@book.push(self)
  end

  def self.clear()
    @@book = []
  end

  def self.find(id)
    contact_id = id.to_i
    @@book.each do |contact|
      if contact.id == contact_id
        return contact
      end
    end
  end
end
