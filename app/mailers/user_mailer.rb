class UserMailer < ActionMailer::Base
  default from: "no-reply@crowdfunder.com"

  def new_pledege(pledge)
  	@owner   = pledge.project.user
  	@project = pledge.project
  	@pledge  = pledge
  	@backer  = pledge.user
  end

end
