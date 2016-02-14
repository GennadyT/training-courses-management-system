# Training Courses Management System

The system is intended to automate the management trainings. It can be used only by internal employees. The system can send notifications about start of trainings and changes in that.
All employees can view trainings and sign up at any training.

## Moqups

Our [moqups](http://ninjamock.com/s/dpuzeq)

## Color of trainings:

green - future trainings (as visitor)
yellow - history of trainings (as visitor)
blue - future trainings (as trainer)
red - history of trainings (as trainer)
grey - not approved trainings (as trainer)

## Credentials to sign into system
* login `jdoe`
* password `password`

## How to run this application

### Database preparation

1. Create MySQL database with name training_courses_management_system.
2. Run tcms.sql script (located in \src\main\db) to fill the database.
3. Check your database credentials in configuration file jdbc.properties located in \src\main\webapp\WEB-INF.

### Via Intellij IDEA

1. Go to File->New->Project from exiting sources.
2. Then choose Import project from external model->Maven.
3. Next choose some settings and finish importing the project.
4. Go to Run->Edit Configurations.
5. Add New Configuration->Tomcat Server->Local.
6. Go to Run->Edit Configurations->Deployment.
7. Add artifact and change application context (or war files decompressed into ROOT folder in Tomcat->webapps).
8. Run application.

### Via Maven & Tomcat

1. Locate to folder which includes file POM.xml.
2. Type `mvn clean package` in cmd.
3. Move .war file located in \target folder to Tomcat's webapps folder.
4. Type `startup.bat` in cmd.
5. Go to `localhost:8080` in your browser.
