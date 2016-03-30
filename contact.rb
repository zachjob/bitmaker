class Contact

  # Add any attr_reader and attr_accessors here

  # Add any class variables here

  # This method should take four string arguments (first_name, last_name, email, note),
  # and initialize this instance of Contact.
  def initialize(first_name, last_name, email, note)
    # Fill this in
  end

  # This method should take four string rguments (first_name, last_name, email, note),
  # and return the newly created contact
  def self.create(first_name, last_name, email, note)
    # Fill this in
  end

  # This method takes no arguments
  # and return all of the existing contacts in array form
  def self.all
    # Fill this in
  end

  # This method should take an integer id argument
  # and return the contact that corresponds to the id
  def self.find(id)
    # Fill this in
  end

  # This method should take two string arguments (attribute, value)
  # It should look for any contact with the attribute corresponding to the value
  # and return an array of those contacts
  #
  # For example:
  #   Contact.find_by('first_name', 'Joe')
  # should return an array of contacts with the first_name of Joe.
  def self.find_by(attribute, value)
    # Fill this in
  end

  # This method takes no arguments
  # It should delete all of the contacts from memory
  def self.delete_all
    # Fill this in
  end

  # This method takes no arguments
  # It should return a string that is composed of the first and last names of the contact.
  def full_name
    # Fill this in
  end

  # This method should take two string arguments (attribute, value)
  # It should update the current instance of contact with the new value of the attribute
  #
  # For example:
  #   mary.update('email', 'mary_new_email@gmail.com')
  # should update mary's email address to the new one.
  def update(attribute, value)
    # Fill this in
  end

  # This method takes no arguments
  # It should delete the current instance of contact from memory
  def delete
    # Fill this in
    # HINT: Use the Array class' built-in delete_if method -- http://ruby-doc.org/core-2.3.0/Array.html#method-i-delete_if
  end

end
