get "/" do
  @form_was_submitted = !params.empty?
  @submission_error = nil
  @firstname_error = nil
  @surname_error = nil
  @age_error = nil
  @email_address_error = nil

  # fetch each field from the @params hash (defaulting to
  # empty string if not present) and sanitise
  @firstname = params.fetch("firstname", "").strip
  @surname = params.fetch("surname", "").strip
  @age = params.fetch("age", "").strip
  @email_address = params.fetch("email_address", "").strip

  if @form_was_submitted
    # add validation messages
    @firstname_error = "Please enter your first name" if @firstname.empty?
    @surname_error = "Please enter your surname" if @surname.empty?
    @age_error = "Please enter your age" unless @age.match?(/^(\d)+$/)
    @email_address_error = "Please enter a valid email address" unless @email_address.match?(/\A\S+@\S+\Z/)

    unless @firstname_error.nil? && @surname_error.nil? && @age_error.nil? && @email_address_error.nil?
      @submission_error = "Please correct the errors below"
    end

    if @submission_error.nil?
      # ... in a real application we would do some processing with the data here ...
    end
  end

  erb :form
end
