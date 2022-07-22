# WEB-APP

Object recognition is done using ResNet50 pre-trained network. We custom trained over the REsNet50 model for recognition of automobile components (Oil filter, Screw, etc.). Then deployed it using FLASK along with HTML, CSS and JS framework into web. <br><br>
The web app can also be deployed in a server using Gunicorn Heroku (for free). <br>
<h2>INSTALLATION</h2>
Some of the basic requirements include Keras, numpy, tensorflow, flask and pillow. For deploying in server, libraries including gunicorn has to be installed. <br><br>

```sh
pip install -r requirements.txt
```
<h2>HOW TO RUN IN LOCAL?</h2>
To run the flask web app in local, run the main python script in terminal (app.py).<br><br>

```sh
python app.py
```
```sh
Then type http://localhost:5000 in browser. 
```
<h2>HOW TO RUN VIA HEROKU?</h2>
First, we will have to install heroku.

```sh
sudo snap install --classic heroku
```
<br>Now, go to the directory/ repository using the terminal/ power shell. <br><br>Then follow the steps below to deploy the app in heroku:<br><br>
1.) Initializing git
```sh
git init
```
2.) Adding the directory to git
```sh
git add .
```
3.) Creating the initial commit
```sh
git commit -m "My first commit"
```
4.) Creating new heroku application
```sh
heroku create
```
5.) Renaming the default 'heroku' app name
```sh
git remote rename heroku brainmagic
```
6.) Push to the git master for build
```sh
git push heroku master
```
APP IS DEPLOYED IN WEB!!<br>
<h2>THE END!!</h2>
Work done in association with <a href="http://brainmagic.co.in/"> Brainmagic Infotech </a> company.

