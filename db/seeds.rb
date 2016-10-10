#  firstname       :string
#  lastname        :string
#  email           :text
#  age             :date
#  image           :text
#  password_digest :text
User.destroy_all
u1 = User.create :firstname => "Arpan",
                 :lastname => "Bhalla",
                 :email => "arpanbhalla@gmail.com",
                 :dob => '3/9/1984',
                 :password => "chicken",
                 :password_confirmation => "chicken",
                 :admin => true

u2 = User.create :firstname => "John",
                 :lastname => "Doe",
                 :email => "john@ga.com",
                 :dob => '5/11/1987',
                 :password => "chicken",
                 :password_confirmation => "chicken",
                 :admin => false

u3 = User.create :firstname => "Nicolas",
                 :lastname => "Cage",
                 :email => "Nicolas@ga.com",
                 :dob => '7/01/1964',
                 :password => "chicken",
                 :password_confirmation => "chicken",
                 :admin => false

d1 = User.create :firstname => "Pooja",
                 :lastname => "Middha",
                 :doctor_qualifications => "( MBBS, MD, DM )",
                 :doctor_speciality => "Cardiologist",
                 :doctor_expertise => "More than 30 years of experience in cardiology
                 Well experienced in implantation of pace makers
                 Done more than 25 thousand cardiac catheterization including coronary angiogram
                 Competency management of acute coronary patients",
                 :doctor_professional_experience => "Assistant Professor (Medicine), Nizam's Institute of Medical Sciences, Hyderabad(1976 – 1982)
                 Assistant Professor (Cardiology), Nizam's Institute of Medical Sciences, Hyderabad(1982 – 1993)
                 Consultant (Cardiology), Mediciti Hospitals, Hyderabad (1993 – 1997)",
                 :doctor => true,
                 :email => "pooja@ga.com",
                 :password => "chicken",
                 :password_confirmation => "chicken"

d2 = User.create :firstname => "VK",
                 :lastname => "Verma",
                 :doctor_qualifications =>"( MBBS, MD, DM )",
                 :doctor_speciality =>"Ophthalmologist",
                 :doctor_expertise => "More than 10 years of experience in Ophthalmology
                 Well experienced in implantation of eyes",
                 :doctor_professional_experience => "Assistant Professor (Medicine), Nizam's Institute of Medical Sciences, Hyderabad(1976 – 1982)
                 Assistant Professor (Cardiology), Nizam's Institute of Medical Sciences, Hyderabad(1982 – 1993)
                 Consultant (Cardiology), Mediciti Hospitals, Hyderabad (1993 – 1997)",
                 :doctor => true,
                 :email => "vkv@ga.com",
                 :password => "chicken",
                 :password_confirmation => "chicken"
