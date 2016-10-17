Second opinion

This is individual Project three made as a part of General Assembly (Wed Development Immersive - 16) course.
I tried to create a platform matching patients who primarily want to seek second opinion on their present medical condition with specialist. This project was made within a week’s time.

Background

The requirements for the project: Have at least 3 models (more if they make sense) – one representing someone using your application, and one that represents the main functional idea for your app Include sign up/log in functionality, with encrypted passwords & an authorization flow Have complete RESTful routes for at least one of your resources with GET, POST, PUT, PATCH, and DELETE Utilize an ORM to create a database table structure and interact with your relationally-stored data.

Result

In total, four models were created:

Users
Messages
Conversations
Charges

Three different types of users were extracted from Users model i.e. Admin, Patient & Doctor. Different actions and authorizations of the user were separated with the help of the helper method.

Actions and authorizations for Admin: create, edit, delete doctor.

Actions and authorizations for Patient: can signup, search doctor, contact doctor once doctor's fees of $20.00 has ben paid. once Payment is done conversation gateway between doctor and patient would open. Patient can also attach the reports with the message. Also, patient can contact many doctors.

Actions and authorizations for Doctor: can respond to patients questions and also attach photographs a

Github was used for version control. I am proud to deliver this within a week.

How to view app

Access it here: https://seeksecondopinion.herokuapp.com/
Clone / fork my repo: https://github.com/Arpanbhalla/seekSecondOpinion

Technology Used:

Ruby on Rails
Ruby
Ajax
JavaScript
JQuery
HTML5
CSS3

Libraries / Plugins / APIs Used

Gems

Bootstrap
Cloudinary
Slick
Bcrypt, '~> 3.1.7'
Ckeditor
Stripe


Future Inclusions

Responsive design.
 
