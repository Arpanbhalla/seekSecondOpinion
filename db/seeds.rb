#  username        :string
#  firstname       :string
#  lastname        :string
#  email           :text
#  age             :date
#  image           :text
#  password_digest :text
User.destroy_all
<<<<<<< Updated upstream
u1 = User.create :username => "Arpan Bhalla", :firstname => "Arpan", :lastname => "Bhalla", :email => "arpanbhalla@gmail.com", :dob => '3/9/1984', :password => "chicken", :password_confirmation => "chicken", :admin = > true
=======
u1 = User.create :username => "admin", :firstname => "admin", :lastname => "admin", :email => "admin@gmail.com", :dob => '3/9/1984', :password => "chicken", :password_confirmation => "chicken", :admin => true
>>>>>>> Stashed changes

u2 = User.create :username => "Johndoe", :firstname => "John", :lastname => "Doe", :email => "john@ga.com", :dob => '5/11/1987', :password => "chicken", :password_confirmation => "chicken", :admin => false

u3 = User.create :username => "Nicolas Cage", :firstname => "Nicolas", :lastname => "Cage", :email => "Nicolas@ga.com", :dob => '7/01/1964', :password => "chicken", :password_confirmation => "chicken", :admin => false

Doctor.destroy_all

d1 = Doctor.create :fullname => "Dr Pooja Middha",
:qualifications => "( MBBS, MD, DM )",
:speciality => "Cardiologist",
:expertise => "More than 30 years of experience in cardiology
Well experienced in implantation of pace makers
Done more than 25 thousand cardiac catheterization including coronary angiogram
Competency management of acute coronary patients",
:professional_experience => "Assistant Professor (Medicine), Nizam's Institute of Medical Sciences, Hyderabad(1976 – 1982)
Assistant Professor (Cardiology), Nizam's Institute of Medical Sciences, Hyderabad(1982 – 1993)
Consultant (Cardiology), Mediciti Hospitals, Hyderabad (1993 – 1997)",
:email => "pooja@ga.com",:password => "chicken", :password_confirmation => "chicken"

d2 = Doctor.create :fullname => "Dr VK Verma",
:qualifications =>"( MBBS, MD, DM )",
:speciality =>"Ophthalmologist",
:expertise => "More than 10 years of experience in Ophthalmology
Well experienced in implantation of eyes",
:professional_experience => "Assistant Professor (Medicine), Nizam's Institute of Medical Sciences, Hyderabad(1976 – 1982)
Assistant Professor (Cardiology), Nizam's Institute of Medical Sciences, Hyderabad(1982 – 1993)
Consultant (Cardiology), Mediciti Hospitals, Hyderabad (1993 – 1997)",
:email => "vkv@ga.com",:password => "chicken", :password_confirmation => "chicken"
