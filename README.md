# Second Opinion

This is an individual project made as a part of General Assembly's Web Development Immersive - Batch 16.
I tried to create a platform for patients who primarily want to seek a second opinion on their present medical condition with a specialist.
This project was made within a week’s time.

### Background

Requirements for the project
* Have at least 3 models (more if they make sense)
  * one representing someone using your application
  * one that represents the main functional idea for your app.
* Include sign up/log in functionality, with encrypted passwords & an authorisation flow.
* Have complete RESTful routes for at least one of your resources with GET, POST, PUT, PATCH, and DELETE.
* Utilize an ORM to create a database table structure and interact with your relationally-stored data.

### Result

The project uses four models:

* Users
  * For User Profile
  * Three different types of users were extracted
    * Admin
    * Patient
    * Doctor
  * Different actions and authorisations of the user profiles were separated with the help of the helper methods
    * Actions and authorisations for Admin
      * Create, Edit and Delete a Doctor Profile
      * View and Edit own Profile
    * Actions and authorisations for Patient
      * Signup
      * Search Doctor based on Speciality
      * Contact Doctor once fees of $20.00 has been paid
      * Send messages/reports to Doctor
    * Actions and authorisations for Doctor
      * View and Respond to patients' messages
      * View own Profile

* Messages
  * For messages exchanged between Patient and Doctor.


* Conversations
  * For conversational channel between Patient and Doctor.


* Charges
  * For payments made towards seeking a second opinion.

Github was used for version control. I am proud to deliver this within a week.


#### How to view

[Access it here](https://seeksecondopinion.herokuapp.com/)

[Clone or fork](https://github.com/Arpanbhalla/seekSecondOpinion)

#### Technology Used:

* Rails
* Ruby
* Ajax
* JavaScript
* jQuery
* HTML5
* CSS3

#### Libraries / Plugins / APIs / Gems Used

* Bootstrap
* Cloudinary
* Slick
* Bcrypt, '~> 3.1.7'
* Ckeditor
* Stripe
