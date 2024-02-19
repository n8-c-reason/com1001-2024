get "/" do
  @club_search = params.fetch("club_search", "").strip

  @players = if @club_search.empty?
               Player.all
             else
               Player.where(Sequel.like(:club, "%#{@club_search}%"))
             end
  erb :search
end
