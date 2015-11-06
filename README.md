# General Assembly Project-2:

# Hanbury Street Rag

------------------------


This project is live on [Heroku](https://blooming-garden-8969.herokuapp.com) as of Nov 5 2015. History is available on [Github](https://github.com/ninebelowzero/Project-2).

--------------------------

As a journalist I have worked with some terrible content management systems. With this in mind, for my second GA project I wanted to make a newspaper website with most or all of the features of a real-life media site, designed to be user-friendly for both customers and editors.

The essentials of the functionality are fairly straightforward:

* A registered user should be able to log in to access all content, but should not be able to edit (except for leaving comments).

* Users who haven't registered should only be able to see the home page and a limited subset of the available content - in this case, the first paragraph of each article.

* There should be a privileged login for editors or journalists to upload content. They should be able to upload text content and photos, and tag articles with a topic and region. They should also be able to delete inappropriate comments.

----------------------------------

### Technical aspects

This project was built in **Rails v.4.2.4**, and incorporates the following gems:

* **Acts as commentable** for comments
* **Carrierwave** for file uploads
* **Devise** for logins and authentication
* **Faker** to create seed data
* **Fog** to interface with files stored remotely
* **Foundation** for styling
* **Ransack** for search
* **RMagick** to process images

Fonts came from Google Fonts. Uploaded files are stored on Amazon web services.

------------------------------------

### Achievements:

* Working search and comment functionality, with the help of the appropriate gems.
* Editor has full control over ads, comments, topics and regions, and is able to create and delete them at will.
* Attractive and (reasonably) responsive design.


-------------------------------------
### Challenges:

* Ideally the editor would have more control over the layout of the page.
* As yet there is no way to sign up a new 'admin' except through the command line.
* No payment functionality
* Possible security vulnerabilities







