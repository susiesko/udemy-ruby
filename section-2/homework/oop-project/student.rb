class Student
  attr_accessor :first_name, :last_name, :email
  attr_reader :username

  @first_name
  @last_name
  @email
  @username
  @password

  def initialize(firstname, lastname, username, email, password)
    @first_name = firstname
    @last_name = lastname;
    @username = username
    @email = email;
    @password = password;
  end

  def first_name=(name)
    @first_name = name
  end

  def first_name
    @first_name
  end
  
  def to_s
    puts "First name: #{@first_name}"
    puts "Last name: #{@last_name}"
    puts "Username: #{@username}"
    puts "Email: #{@email}"
  end
  
end

student = Student.new('Susie', 'R', 'susie', 'susie@example.com', 'password')
puts student

student2 = Student.new('Dana', 'R', 'dana', 'dana@example.com', 'password')
puts student2