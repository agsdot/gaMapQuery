class Contactme < ActionMailer::Base
  default from: "jonathanlai@gmail.com"

  def form_email(to, search)
  	@search = search
  	@location = Location.near(@search, 1500, :order => :distance).first
  	mail(:to => to, :subject => "Take me to GA")
  end


end
 
 