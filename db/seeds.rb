#  username        :string
#  firstname       :string
#  lastname        :string
#  email           :text
#  age             :date
#  image           :text
#  password_digest :text
User.destroy_all
u1 = User.create :username => "Arpan Bhalla", :firstname => "Arpan", :lastname => "Bhalla", :email => "arpanbhalla@gmail.com", :dob => '3/9/1984', :password => "chicken", :password_confirmation => "chicken"

u2 = User.create :username => "Johndoe", :firstname => "John", :lastname => "Doe", :email => "john@ga.com", :dob => '5/11/1987', :password => "chicken", :password_confirmation => "chicken"

u3 = User.create :username => "Nicolas Cage", :firstname => "Nicolas", :lastname => "Cage", :email => "Nicolas@ga.com", :dob => '7/01/1964', :password => "chicken", :password_confirmation => "chicken"

Doctor.destroy_all

d1 = Doctor.create :doctors_fullname => "Dr Pooja Middha",
:doctors_qualifications => "( MBBS, MD, DM )",
:doctors_speciality => "Cardiologist",
:doctors_expertise => "More than 30 years of experience in cardiology
Well experienced in implantation of pace makers
Done more than 25 thousand cardiac catheterization including coronary angiogram
Competency management of acute coronary patients",
:doctors_professional_experience => "Assistant Professor (Medicine), Nizam's Institute of Medical Sciences, Hyderabad(1976 – 1982)
Assistant Professor (Cardiology), Nizam's Institute of Medical Sciences, Hyderabad(1982 – 1993)
Consultant (Cardiology), Mediciti Hospitals, Hyderabad (1993 – 1997)",
:doctors_email => "pooja@ga.com",:password => "chicken", :password_confirmation => "chicken"

d2 = Doctor.create :doctors_fullname => "Dr VK Verma",
:doctors_qualifications =>"( MBBS, MD, DM )",
:doctors_speciality =>"Ophthalmologist",
:doctors_expertise => "More than 10 years of experience in Ophthalmology
Well experienced in implantation of eyes",
:doctors_professional_experience => "Assistant Professor (Medicine), Nizam's Institute of Medical Sciences, Hyderabad(1976 – 1982)
Assistant Professor (Cardiology), Nizam's Institute of Medical Sciences, Hyderabad(1982 – 1993)
Consultant (Cardiology), Mediciti Hospitals, Hyderabad (1993 – 1997)",
:doctors_email => "vkv@ga.com",:password => "chicken", :password_confirmation => "chicken"
