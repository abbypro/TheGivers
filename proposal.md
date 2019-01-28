Gift Genie: An App to Revolutionize Gift Giving
By The Givers
Alex Nehls, Emily Plank, Abby Prosise, Syd Shelby, and Derek Sun

I. Introduction 

Genie will be a mobile application oriented around gift giving. When a new user joins, they will create a simple profile and will take a quiz about gifts they are interested in receiving. Gift Genie’s machine learning algorithm will be able to find products perfect for them. Other users will then be able to look at their profile, see what kind of gifts this person would like and will be provided with a way to purchase the gifts through Amazon.
   
Whenever someone gives a gift, they want it to be one that the receiver will enjoy. Whether it is a new partner, a blossoming friendship, or a sibling who is really, really hard to shop for, Gift Genie can show the buyer what gifts are right for their loved ones or awkward Secret Santa pulls. The gift giver can buy these products directly from Amazon through the Gift Genie app, and the receiver can get gifts that they actually love, instead of keeping in the box for a few months and then tossing out. Gift Genie takes the pressure out of gift giving and provides an easy method for shopping.
    
There are no mobile applications like Gift Genie in the market today. Google Play Store and the App Store are filled with wish list creators and Santa Claus gift list editors. However, few, if any, of these apps make it a social experience where one can add friends and see a gift profile. Additionally, no other apps learn what the user wants to be given instead of making the user list it themselves, and no other apps link customers directly to products on Amazon. 

Our team is built from Junior and Senior Computer Science students at the University of Tennessee, Knoxville. They have been united by a 300 level Software Engineering class that is resulting in this product. They all have a strong background in object-oriented design and development, and they all have unique skills to bring to the project.

II. Customer Value

Our targeted customers are not only students in high schools or colleges but people of all ages. Everyone will give away or receive gifts on no matter birthday, holidays or some special events, which is a universal need in socializing.
  
Sometimes people have a hard time deciding what gift to give. Is it ok to send these flowers? Will he/she love this headset? etc. At most of the times they’re worrying about too many unnecessary questions, it is either because they are just simply not good at picking gifts or lacking such experience, or because they are too shy to give it away. Customers we are trying to reach usually seek a simpler and time-saving way to give away appropriate gifts. So we’re here to make people’s life more easier and smoother, no time wasting, no hesitation, much freedom.
  
Indeed, there have already existed some gift-giving apps, like Gyft, Giftagram, Giftplanner etc. And even virtual assistants like Alexa can help you with gift-giving. However, these tools could either give you recommendations for gifts and then let yourself do the organizing or deliver thing, or help you with planning but leave the job of choosing gifts to you only. They can’t do them altogether. We aim to build an app that offers you the one-stop service in just several clicks. Besides the abilities an app possesses, we also emphasize its accuracy. We believe in the power of machine learning, but also value the importance of customers’ own choices and habits. We let the customers to build their own gift maps, and also set up a rating system to personalize their own style, so they won’t worry about sending a princess dress as a father’s birthday gift, which was once done by Alexa.

As mentioned in introduction, as a gift-giver, you can view others’ gift history(if set visible), given the recommendations offered by ML algorithms, then make the purchase within the app or with the link to Amazon. Also, you can receive in-time updates of your gift status. As a gift-receiver, you can rate the gifts you get, set your own gift preferences and use the built-in planning tool to arrange the gifts you have.
As the developers, we will periodically hand out small questionaires to get the feedback from our customers, which will provide us with useful information and help us improve the app. 
 
III. Proposed Solution and Technology

Our software will manage user accounts, preferences, and inter-user connections. This means writing machine learning algorithms to understand products users would want to receive, pulling these products from Amazon, keep track of gifts given to users and other user data, and allowing users to see the profiles of their connections in order to purchase gifts.
The main components of our system is the user interface in the form of a mobile application, a database to store user information, a machine learning algorithm to recommend products for users, and data pulled from Amazon on available products.

The following diagram is how we plan on organizing our application's infrastructure:
//See Proposal_Image.jpeg
As seen above, the UI is where information exchange will happen between us and the user, Firebase will be used to store data and do any heavy duty computation, and Amazon’s Product Advertising API will be where we pull product data. In the final stages we can also consider direct in app purchasing from the mobile app through Amazon’s API.

A minimal system would include user accounts that show wish lists instead of recommended gifts. This would eliminate the machine learning aspect of our product, but would allow users to still view products to buy for friends, family, etc.
Possible enhancements include the ability for users to privately rate gifts that they have received in order to improve the ML algorithm recommendations. Another enhancement would be the ability to purchase products in app rather than just receiving a link to an Amazon product. Assuming we enable in app purchasing, we could also store user addresses and use Amazon's ability to send products as gifts to send directly to the receiver's address without the sender needing to know the address. Additionally, features could be added to filter possible gifts by category,  price, ratings, etc. 

We plan on testing our system by running it locally on our phones and replicate the gift selection process for each other.

The following is a list of technologies we will use to build our system:
  -Amazon’s Product Advertising API will allow us to access products as well as their associated images, descriptions, and customer reviews. This API was designed to allow developers to build virtual storefronts that sell items listed on Amazon.com. It will require knowledge of basic SOAP/REST protocols and familiarity with XML.
  -Flutter SDK was produced by Google and allows a developer to create mobile applications for both Android and IOS operating systems at the same time. It also has a library of pre-built widgets that can be used to speed up to development. It was made to be compatible with many other existing technologies including other Google developer products and IDEs such as Android Studio and IntelliJ; our team plans on using both of these. Flutter will require use of Google’s programming language Dart which is very similar to Java.         
  -Firebase is another Google product that is geared towards mobile application development. Firebase takes a lot of the infrastructure building out of development as well as easy access to a lot of Google made tools. We are looking at using it for cloud storage space, google authentication, possibly for its Machine Learning Kit, and cloud computing space.

IV. Team 

Team Members and Project Strengths:
  -Alex Nehls is a Senior student majoring in Computer Science. They have experience with both C and C++. They also have several years of experience with working in groups and collaborating efforts.
  -Emily Plank is a Junior studying Computer Science. She has experience programming in C/C++ and Object Oriented Design. She has strong interest in Graphic Design. 
  -Abby Prosise is a Junior majoring in Computer Science and minoring in Cybersecurity. Although she is fascinated by cybersecurity, she is still new to the subject. She has extensive experience in C, C++, Java, and is proficient in assembly. Other applications that she has used include Maven and Springboot.
  -Syd Shelby is a Junior studying Computer Science at the University of Tennessee. She has experience developing in Java,  has a small amount of experience communicating XML messages with servers using SOAP/REST protocols, and a strong interest in Machine Learning.
  -Derek Sun  is a senior student majoring in Computer Science who has experience in C, C++, Java, HTML/CSS and is proficient in Python. He has been doing research in the field of machine learning, especially NLP, since the 3rd year of undergrad study thus familiar with most of the DP frameworks.

Our team plans to rotate through roles as Developers, Project Managers, and Note Takers. 

V. Project Management

Schedule:
  Jan 21-27: Download Flutter and learn basics
  Jan 28-Feb 3: Create user profiles and basic UI
  Feb 4-10: Implement cyber security for user profiles and add ability to add friends
  Feb 11-17: Access Amazon back-end/Begin initialization quiz with focus on writing questions and storing answers in user   profiles
  Feb 18-24: Finish initialization quiz with focus on adding ability to manually add previously received gifts
  Feb 25-March 3: Add UI with focus on adding user interactivity on all previously implemented features
  March 4-10: Polish UI/Add ability to rate gifts and buy for another user
  March 11-17: Catch up week/Polish UI
  March 18-24: Spring Break/Look into machine learning/Polish UI
  March 25-31: Implement machine learning algorithm
  April 1-7: Improve machine learning algorithm
  April 8-14: Finalize machine learning algorithm
  April 15-21: Bug fixes and polish
  April 22-28: Bug fixes and polish

The completion of the system is feasible. We plan on using the time in class on Fridays to check in with everyone’s progress, talk about sprint goals/milestones, and any other project business or issues

Constraints:
        There should not be any regulatory or legal constraints since we are accessing and 
would  sell Amazon Products through their API. Licensing would have to be purchased in 
order to publish the application in the IOS App Store or the Google Play Store. There are no ethical concerns. There may be some criticism along the lines of, “if you really know someone, you should be able to pick them out a gift yourself,” but our response to that would be that this is to augment the good intentions of gift giving and to allow you to give someone a gift that you know they will like. 

Resources:
        We will have access to the data we need. Our three main resources our the Amazon 
Product API, Flutter SDK, and Firebase. Amazon Product API and Flutter SDK are 
available for developers for free. If we have trouble getting the level of Firebase we need, we have a personal relationship with the Google representative at UTK, who 
can give us free Firebase credits. 

Descoping:
        If our vision of the app cannot be fully implemented, it will still operate. There are 
many pieces of the app that will still be useful in a  simplified state. Additionally, there are some aspects of our app that are ideal but not necessary, like an option for the receiver of the gift to rate it. Our app will still solve a need even if it does not fit our full vision. For example, if the users arel not be able to order straight from the app, it will still be useful because they can still be linked to products. 
