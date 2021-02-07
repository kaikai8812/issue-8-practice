class NotificationMailer < ApplicationMailer
  default from: 'no-replay@gmail.com'  #？
  
  def complete_mail(user)
    @user = user
    # @url = "http://localhost:3000/users/#{@user.id}"
    attachments['Gemfile.txt'] = File.read('Gemfile')
    mail(subject: "COMPLETE join your address", to: @user.email)  #subjectは、件名　toは宛先
  end

end
