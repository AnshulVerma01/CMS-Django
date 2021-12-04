# Content Management System
## Overview
* This project is a content management system written in Python language.
* The theme of the project is - Anime Community Website.
* It lets users post articles and interact with each other.

## Features
* Register and Login to the website.
* Explore Section - Lets users see the articles posted by other users.
* Publish Section - Lets users publish their own articles.
* My Artivles Section - Lets users view, edit or delete their articles.
* Settings - Change Password or Change Profile Picture.
* Users can also comment on the articles.

## Requirements
* [XAMPP](https://www.apachefriends.org/download.html)
* [VS Code (Or Any Other IDE)](https://code.visualstudio.com/download)
* Django Framework

## Installation
* Clone the repository and open with VS Code (or any other suitable IDE).
* Install Dependencies - 

  ```pip install django```
  
  ```pip install mysqlclient```
  
  ```pip install pillow```
  
* Open XAMPP and start Apache and MySQL server.
* Open MySQL admin page and create a database with name "cms".
* Import the 'cms.sql' file into the database.
* Run the following command from the cloned repo directory (where manage.py file is located)- 

  ```python manage.py runserver```
* Open a web browser and type in the URL - ```127.0.0.1:8000```
* Register to the website and use the credentials to Login.

## Screenshots
### Home Page
![HomePage](https://github.com/AnshulVerma01/CMS-Django/blob/main/screenshots/home.png)

### Login Page
![LoginPage](https://github.com/AnshulVerma01/CMS-Django/blob/main/screenshots/login.png)

### Register Page
![RegisterPage](https://github.com/AnshulVerma01/CMS-Django/blob/main/screenshots/register.png)

### Dashboard
![Dashboard](https://github.com/AnshulVerma01/CMS-Django/blob/main/screenshots/dashboard.png)

### Explore Page
![ExplorePage](https://github.com/AnshulVerma01/CMS-Django/blob/main/screenshots/explore.png)

### MyArticles Page
![MyArticlesPage](https://github.com/AnshulVerma01/CMS-Django/blob/main/screenshots/myarticles1.png)

### Comments
![Comments](https://github.com/AnshulVerma01/CMS-Django/blob/main/screenshots/comments.png)

### Settings
![Settings](https://github.com/AnshulVerma01/CMS-Django/blob/main/screenshots/settings.png)

