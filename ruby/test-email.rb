require "mail"

# returns the user_id if email is present in the system
# if the email is not present it returns false
def find_user_id_by_email(email)
    database = {
      'psst@edivad.art' => 54,
      'root@olisti.co' => 55,
      'foo@bar.com' => 130,
    }
    # database['psst@edivad.art'] # => 54
    user_id = database[email]
    if user_id == nil
      :user_not_found
    else
      user_id
    end
end

def send_email(email, title, body)
  puts "trr.. trr.. sending e-mail.. trr.."
  # Mail.deliver do
  #  to email
  #  from 'admin@mysite.com'
  #  subject title
  #  body body
  # end
end

def password_reset(email)
  user_id = find_user_id_by_email(email)
  if user_id == :user_not_found
    return :failure
  end
  send_email(email, "Password reset", "Per resettare la tua password accedi al link https://miosito.com/password_reset/#{user_id}")
  true
end

def command_reset(email)
  result = password_reset(email)
  if result == :failure
    puts "E-mail non presente nel sistema."
  else
    puts "E-mail correttamente inviata, controlla la tua casella di posta"
  end
end

command_reset("psst@edivad.art")
command_reset("root@olisti.co")
command_reset("baba@gmail.com")
