#  firstname       :string
#  lastname        :string
#  email           :text
#  age             :date
#  image           :text
#  password_digest :text
User.destroy_all
u1 = User.create :firstname => "admin",
                 :lastname => "user",
                 :email => "admin@gmail.com",
                 :dob => '14/10/2016',
                 :password => "fish",
                 :password_confirmation => "fish",
                 :admin => true

u2 = User.create :firstname => "John",
                 :lastname => "Doe",
                 :email => "john@gmail.com",
                 :dob => '5/11/1987',
                 :password => "chicken",
                 :password_confirmation => "chicken",
                 :admin => false

u3 = User.create :firstname => "arpan",
                 :lastname => "bhalla",
                 :email => "arpanbhalla@gmail.com",
                 :dob => '7/01/1984',
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
                 :doctor_professional_experience => "20 yrs",
                 :doctor => true,
                 :email => "pooja@gmail.com",
                 :image => "http://res.cloudinary.com/dbgvixfy4/image/upload/v1476920422/ngmsdvyasmpdcrrxvy3e.png",
                 :password => "chicken",
                 :password_confirmation => "chicken"

d2 = User.create :firstname => "VK",
                 :lastname => "Verma",
                 :doctor_qualifications =>"( MBBS, MD, DM )",
                 :doctor_speciality =>"Ophthalmologist",
                 :doctor_expertise => "More than 10 years of experience in Ophthalmology
                 Well experienced in implantation of eyes",
                 :doctor_professional_experience => "3 yrs",
                 :doctor => true,
                 :email => "vkv@gmail.com",
                 :image => "http://res.cloudinary.com/dbgvixfy4/image/upload/v1476920390/bkkjd07axnb22nup3glf.jpg",
                 :password => "chicken",
                 :password_confirmation => "chicken"

d3 = User.create :firstname => "Sukrit",
                 :lastname => "Khanna",
                 :doctor_qualifications =>"( MBBS, MD, DM )",
                 :doctor_speciality =>"Surgeon",
                 :doctor_expertise => "More than 10 years of experience as surgeon
                 Well experienced doctor in surgery",
                 :doctor_professional_experience => "10 yrs",
                 :doctor => true,
                 :email => "sukrit@gmail.com",
                 :image => "http://res.cloudinary.com/dbgvixfy4/image/upload/v1476956528/ease7wl2qpdnr0iak3tg.jpg",
                 :password => "chicken",
                 :password_confirmation => "chicken"

d4 = User.create :firstname => "Sanjana",
                 :lastname => "Khanna",
                 :doctor_qualifications =>"( MBBS, MD, DM )",
                 :doctor_speciality =>"Surgeon",
                 :doctor_expertise => "More than 7 years of experience as surgeon
                 Well experienced doctor in surgery",
                 :doctor_professional_experience => "7 yrs",
                 :doctor => true,
                 :email => "sanjana@gmail.com",
                 :image => "http://res.cloudinary.com/dbgvixfy4/image/upload/v1476956561/fjf6oamc1kwhentk0jyw.jpg",
                 :password => "chicken",
                 :password_confirmation => "chicken"
