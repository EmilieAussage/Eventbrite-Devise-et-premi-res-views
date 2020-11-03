class UserMailer < ApplicationMailer
  default from: 'tulipe49100@yopmail.com'
 
  def welcome_email(user)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @user = user 

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'https://agile-hamlet-69342.herokuapp.com/users/sign_in' 

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @user.email, subject: 'Bienvenue chez nous !') 
  end
end


# http://localhost:3000/users/password/edit?reset_password_token=K1mf5Cdde4VYi8iqpi3D
