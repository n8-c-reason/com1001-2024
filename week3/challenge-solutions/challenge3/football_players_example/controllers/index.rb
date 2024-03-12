get "/" do
  @name_search = params.fetch("club_search", "").strip

  @players = if @name_search.empty?
               Player.all
             else
               Player.where(Sequel.ilike(:first_name, "%#{@name_search}%")).or(Sequel.ilike(:surname, "%#{@name_search}%"))
             end
  erb :search
end
