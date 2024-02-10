get "/profile" do
  @person = params["person"]
  @name = "Donghwan Shin" if @person == "donghwan"
  @name = "Phil McMinn" if @person == "phil"
  @name = "Unknown" if @name.nil?
  erb :profile
end
