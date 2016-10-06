#  username        :string
#  firstname       :string
#  lastname        :string
#  email           :text
#  age             :date
#  image           :text
#  password_digest :text
User.destroy_all
u1 = User.create :username => "Arpan Bhalla", :firstname => "Arpan", :lastname => "Bhalla", :email => "arpan@ga.com", :dob => '3/9/1984', :password => "chicken", :password_confirmation => "chicken"

u2 = User.create :username => "Johndoe", :firstname => "John", :lastname => "Doe", :email => "john@ga.com", :dob => '5/11/1987', :password => "chicken", :password_confirmation => "chicken"

u3 = User.create :username => "Nicolas Cage", :firstname => "Nicolas", :lastname => "Cage", :email => "Nicolas@ga.com", :dob => '7/01/1964', :password => "chicken", :password_confirmation => "chicken"
