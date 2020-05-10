# SeleniumJunitTests
This was a project for one of my classes in my Master's Program.  The project was to automate Selenium Junit tests on a website of our choice.  I chose a website that my group members and I built the previous semester.  This website was a sandbox e-commerce website.

# To Set up Dev Env for Tests

    Download XAMP at "https://www.apachefriends.org/download.html"
    Start the MySql and Tomcat server that come with that
    Go to the MySql console at "http://localhost/phpmyadmin/"
    Create a new schema/database called "caffeineDB"
    Import the database via the "caffeineDB.sql" file that is included in this repo
    Go to the "xampp" folder on your computer
    Go to the "htdocs" folder and clone the repo at "https://github.com/ajikee1/cosc612projAkeeri" there
    You can now go to the home page at "http://localhost/cosc612projAkeeri/homeLandingPagePost.php"

    In this repo, you will need to change lines 47 & 48 to match where the chrome driver is on your computer.
    Run the tests
