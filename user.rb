class User
  attr_reader :email
  attr_writer :password

  def initialize(email, password)
    @email = email
    @password = password
  end

  # attr_reader creates this 👇
  # def email
  #   return @email
  # end
end

p doug = User.new('doug@email.com', '123123')
doug.email
doug.password = '123456'
p doug
