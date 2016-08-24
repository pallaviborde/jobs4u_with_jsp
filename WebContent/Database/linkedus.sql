CREATE DATABASE IF NOT EXISTS LINKEDUS;
USE LINKEDUS;

DROP TABLE IF EXISTS `Student`;
CREATE TABLE `Student` (
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `firstName` varchar(50),
  `lastName` varchar(50),
  `telephone` varchar(20),
  `address` varchar(100),
  `summary` LONGTEXT,
  `expectedJob` varchar(100),
  `skills` LONGTEXT,
  `schoolName` varchar(100),
  `schoolStartMonth` varchar(10),
  `schoolStartYear` varchar(10),
  `schoolEndMonth` varchar(10),
  `schoolEndYear` varchar(10),
  `schoolDegree` varchar(100),
  `schoolMajor` varchar(100),
  `workCompanyName` varchar(100),
  `workJobTitle` varchar(100),
  `workStartMonth` varchar(10),
  `workStartYear` varchar(10),
  `workEndMonth` varchar(10),
  `workEndYear` varchar(10),
  `workJobResponsibility` LONGTEXT,
  `projectName` varchar(100),
  `projectDescription` LONGTEXT,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7;


DROP TABLE IF EXISTS `Recruiter`;
CREATE TABLE `Recruiter` (
  `recEmail` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`recEmail`)
) ENGINE=InnoDB AUTO_INCREMENT=7;

DROP TABLE IF EXISTS `Job`;
CREATE TABLE `Job` (
  `jobID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `recEmail` varchar(50) NOT NULL,
  `jobTitle` varchar(50),
  `companyName` varchar(100),
  `companyWebsite` varchar(100),
  `location` varchar(50),
  `jobDescription` LONGTEXT,
  `desiredSkills` LONGTEXT,
  `industry` varchar(50),
  `employmentType` varchar(50),
  `experienceLevel` varchar(50),
  `jobFunction` varchar(50),
  `education` varchar(100),
  `postTime` date,
  `jobLink` varchar(1000),
  PRIMARY KEY (`jobID`)
) ENGINE=InnoDB AUTO_INCREMENT=7;

DROP TABLE IF EXISTS `Admin`;
CREATE TABLE `Admin` (
  `adminID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `adminName` varchar(50),
  `password` varchar(50),
  PRIMARY KEY (`adminID`)
) ENGINE=InnoDB AUTO_INCREMENT=7;






insert into recruiter values(
'sara@westvalley.com',
'123456'
);




insert into admin values(
'1',
'admin',
'admin'
);





insert into student values(
'zhiweigong@students.itu.edu',
'123456',
'Zhiwei',
'Gong',
'(937)-887-5824',
'3164 Smokey Ln, San Jose, CA 95116',
'I worked in Sandisk as a Firmware testing engineer.
I have much experience on SAS drive testing execution (Test system built, Test design), 
SAS drive performance test, Regular BVT test, Weekly Regression test, HP Psuite, Issue debug.
 I am also good at system trouble shooting.
I am very familiar with the equipment, tools and analyzer such as: Oakgate, Sanblaze, 
Iometer, Fio, SerialTek, JDSU, FlexStar, PMC and Quarch.
I have MSEE background and also have a lot of software experience. I can work on challenging projects 
and work under high pressure. 
I am looking for a full-time or part-time internship opportunity in hardware fields.',
'Electrical Engineer Intern',
'PCAs and FPGAs, system power and grounding, system cabling and interconnect, OEM hardware, and electro-mechanical subassemblies',
'International Technological University',
'January',
'2015',
'May',
'2016',
'Master Degree',
'Electrical/Computer Engineering',
'Sandisk',
'Electrical Engineer',
'June',
'2015',
'December',
'2015',
'Program and test the management system of Mo-card TV
Test Mo-card TV management system from internet and make sure it has no bug.
Participate in the Internet of things System design group. Developing test 
cases for every parts can match and work well.',
'Zhaorui Electronic',
'I leaded the team to construct the network workstation for companies (include Agricultural Development Bank of China, Ever Growing Bank Co.,LTD and so on). We submited our tender and won them.
I made the tender file, design the construction of the workstation.');

insert into student values(
'elizabeth@students.itu.edu',
'123456',
'Elizabeth',
'Brooks',
'(392)-715-1687',
'1610 Bruce St, San Jose, CA 95116',
'I worked in Sandisk as a Firmware testing engineer.
I have much experience on SAS drive testing execution (Test system built, Test design), 
SAS drive performance test, Regular BVT test, Weekly Regression test, HP Psuite, Issue debug.
 I am also good at system trouble shooting.
I am very familiar with the equipment, tools and analyzer such as: Oakgate, Sanblaze, 
Iometer, Fio, SerialTek, JDSU, FlexStar, PMC and Quarch.
I have MSEE background and also have a lot of software experience. I can work on challenging projects 
and work under high pressure. 
I am looking for a full-time or part-time internship opportunity in hardware fields.',
'Electrical Engineer Intern',
'PCAs and FPGAs, system power and grounding, system cabling and interconnect, OEM hardware, and electro-mechanical subassemblies',
'International Technological University',
'January',
'2015',
'May',
'2016',
'Master Degree',
'Electrical/Computer Engineering',
'Sandisk',
'Electrical Engineer',
'June',
'2015',
'December',
'2015',
'Program and test the management system of Mo-card TV
Test Mo-card TV management system from internet and make sure it has no bug.
Participate in the Internet of things System design group. Developing test 
cases for every parts can match and work well.',
'Zhaorui Electronic',
'I leaded the team to construct the network workstation for companies (include Agricultural Development Bank of China, Ever Growing Bank Co.,LTD and so on). We submited our tender and won them.
I made the tender file, design the construction of the workstation.');



insert into student values(
'mike@students.itu.edu',
'123456',
'Mike',
'Lawrence',
'(937)-887-5824',
'3164 Smokey Ln, San Jose, CA 95116',
'OS: Mac, Linux, Windows
Programmming languages: Java, C++ , Scala(basics)
Platform (frameworks): Java EE (EJB, JPA), Storm (+DRPC), OpenNLP, Android, Hibernate, JDBC, Qt
DB: MongoDB, JavaDB(Derby), MySQL (basics)
Languages: English, Ukraine, Russian
Specialties: Text mining, Data mining, machine learning, Big Data',
'Software Development Engineer',
'Java; Android; OOP; Linux; Software Engineering; Git; C++; Algorithms; Eclipse',
'International Technological University',
'January',
'2015',
'May',
'2016',
'Master Degree',
'Computer Science/Software Engineering',
'Amazon',
'Software Development Engineer',
'June',
'2015',
'December',
'2015',
'Development of algorithms for data processing; Data/Text mining algorithms. 
Also development of programs for different mobile platforms as well as the development of
firmware for phones on the Bada OS and Android. Development and implementation of new
technologies and software.',
'Social network for family',
'Social network for family');


insert into student values(
'florence@students.itu.edu',
'123456',
'Florence',
'Rivera',
'(421)-128-9307',
'3827 Crescent Canyon St, San Jose, CA 94321',
'As a senior at ITU, 
I am currently pursuing a degree in Business
 Administration with a concentration in International Business. 
I plan to graduate in 2016. Playing sports my entire life and 
now in college, I have mastered time management skills and 
can work efficiently towards deadlines. I have strong communications 
skills from multiple jobs in customer service and am excited to 
use my skills in the business world upon graduation.',
'Sales and Marketing Intern',
'Customer Service;Team Leadership;Microsoft Office',
'International Technological University',
'January',
'2015',
'May',
'2016',
'Master of Business Administration (M.B.A.)',
'Business Administration',
'The Museum of Flight',
'Admissions Assistant',
'June',
'2015',
'December',
'2015',
'Sold admissions tickets, additional entertainment accessories, 
and operated Flight Avionics simulator. Overcame and effectively 
communicated through cultural barriers, which led to better 
overall efficiency of customer service skills.',
'Junior Achievement',
'Taught first grade class at West Mercer Elementary School about primary 
economics topics which included, but were not limited to wants versus needs,
 money, goods and services, entrepreneurship, and businesses.');
 
 insert into student values(
'tracey@students.itu.edu',
'123456',
'Tracey',
'Sutton',
'(770)-767-4481',
'6186 Pockrus Page Rd, San Jose, CA 94321',
'As a senior at ITU, 
I am currently pursuing a degree in Business
 Administration with a concentration in International Business. 
I plan to graduate in 2016. Playing sports my entire life and 
now in college, I have mastered time management skills and 
can work efficiently towards deadlines. I have strong communications 
skills from multiple jobs in customer service and am excited to 
use my skills in the business world upon graduation.',
'Sales and Marketing Intern',
'Customer Service;Team Leadership;Microsoft Office',
'International Technological University',
'January',
'2015',
'May',
'2016',
'Master of Business Administration (M.B.A.)',
'Business Administration',
'The Museum of Flight',
'Admissions Assistant',
'June',
'2015',
'December',
'2015',
'Sold admissions tickets, additional entertainment accessories, 
and operated Flight Avionics simulator. Overcame and effectively 
communicated through cultural barriers, which led to better 
overall efficiency of customer service skills.',
'Junior Achievement',
'Taught first grade class at West Mercer Elementary School about primary 
economics topics which included, but were not limited to wants versus needs,
 money, goods and services, entrepreneurship, and businesses.');
 
 insert into student values(
'lisa@students.itu.edu',
'123456',
'Lisa',
'Richards',
'(794)-714-2263',
'2361 Perfect Day Ave, San Jose, CA 98742',
'OS: Mac, Linux, Windows
Programmming languages: Java, C++ , Scala(basics)
Platform (frameworks): Java EE (EJB, JPA), Storm (+DRPC), OpenNLP, Android, Hibernate, JDBC, Qt
DB: MongoDB, JavaDB(Derby), MySQL (basics)
Languages: English, Ukraine, Russian
Specialties: Text mining, Data mining, machine learning, Big Data',
'Software Development Engineer',
'Java; Android; OOP; Linux; Software Engineering; Git; C++; Algorithms; Eclipse',
'International Technological University',
'January',
'2015',
'May',
'2016',
'Master Degree',
'Computer Science/Software Engineering',
'Amazon',
'Software Development Engineer',
'June',
'2015',
'December',
'2015',
'Development of algorithms for data processing; Data/Text mining algorithms. 
Also development of programs for different mobile platforms as well as the development of
firmware for phones on the Bada OS and Android. Development and implementation of new
technologies and software.',
'Social network for family',
'Social network for family');

 

 insert into student values(
'brian@students.itu.edu',
'123456',
'Brian',
'Roxhdec',
'(626)-664-2103',
'8753 Photinia Ave, San Jose, CA 90609',
'OS: Mac, Linux, Windows
Programmming languages: Java, C++ , Scala(basics)
Platform (frameworks): Java EE (EJB, JPA), Storm (+DRPC), OpenNLP, Android, Hibernate, JDBC, Qt
DB: MongoDB, JavaDB(Derby), MySQL (basics)
Languages: English, Ukraine, Russian
Specialties: Text mining, Data mining, machine learning, Big Data',
'Software Development Engineer',
'Java; Android; OOP; Linux; Software Engineering; Git; C++; Algorithms; Eclipse',
'International Technological University',
'January',
'2015',
'May',
'2016',
'Master Degree',
'Computer Science/Software Engineering',
'Amazon',
'Software Development Engineer',
'June',
'2015',
'December',
'2015',
'Development of algorithms for data processing; Data/Text mining algorithms. 
Also development of programs for different mobile platforms as well as the development of
firmware for phones on the Bada OS and Android. Development and implementation of new
technologies and software.',
'Social network for family',
'Social network for family');


insert into job(recEmail,jobTitle,companyName,companyWebsite,location,
jobDescription,desiredSkills,industry,employmentType,experienceLevel,
jobFunction,education,postTime,jobLink) values(
'sara@westvalley.com',
'Project Manager',
'Google',
'https://www.google.com/',
'Mountain View, CA',
'Manage the design and deployment of Google Fiber to the Home (FTTH) build in a metropolitan area.
Lead a project team within a metropolitan area including vendors and contractors.
Coordinate with city officials, jurisdictional authorities and utility representatives.
Manage proposals, bids, scope definition, engineering design cycles and design review and 
approvals for a FTTH network, specifically, the selection of EPC vendors.
Manage vendor scope of work (SOW), project change orders and materials procurement sufficient 
to meet contractual requirements.',

'MBA or advanced degree.
10 years of experience with fiber network deployments, including experience with constructing 
new outside and inside plant fiber infrastructure, and 5 years of experience with FTTH 
infrastructure.
Experience with Primavera project management system.
Familiar with GIS (Geographic Information Systems) and database management including AutoCAD, 
ESRI, and shape file functionality.
Working knowledge of inside and outside plant fiber optic network infrastructure, 
engineering design and construction.
Knowledge of network drawings, route maps and scopes of work, interpreting fiber test results 
and auditing projects for compliance with scopes of work.',
'Business Administration',
'Full-time',
'Entry level',
'Program Management',
'Masters or Ph.D. degree',
'2016-03-08',
'https://www.google.com/about/careers/applications/u/0/packets/aedf11d7-62fa-4649-919c-2b0c200511c5/form');

insert into job(recEmail,jobTitle,companyName,companyWebsite,location,
jobDescription,desiredSkills,industry,employmentType,experienceLevel,
jobFunction,education,postTime,jobLink) values(
'sara@westvalley.com',
'Software Development Engineer',
'Amazon',
'https://www.amazon.com/',
'Seattle, WA',
'The AWS Relational Database Service is one of the fastest-growing AWS businesses, 
providing automated relational database management in the cloud. 
Customers can set up a new database with just a few clicks, 
and complex administrative tasks like scaling, fail-over, 
and monitoring are all automatically handled by our control systems. 
Providing such simplified management for customers comes with the 
challenge of building sophisticated and reliable control systems. 
The RDS team addresses these challenges by developing services that 
reflect the latest advances in high availability, data dissemination 
and replication, load balancing, autonomous management, and repair.',
'Bachelor degree in Computer Science or related field, minimum of 3 years software development experience
Alternatively (no degree) minimum of eight years of professional software development experience
Proficiency developing in a modern programming language, such as C++, Java, C#, Python, or Ruby
Proficiency in design and analysis of algorithms and data structures
Knowledge of Operating Systems and their security features
Detailed technical knowledge of systems and network security, authentication and security protocols, 
applied cryptography, and application security
Proficiency in object-oriented design
Effective verbal and written communication skills
Masters or Ph.D. degree in Computer Science',
'Computer Science/Software Engineering',
'Full-time',
'Entry level',
'Engineering',
'Masters or Ph.D. degree in Computer Science',
'2016-03-08',
'https://us-amazon.icims.com/jobs/372402/sde/job?mode=job&iis=Job%2BBoard&iisn=LinkedIn&mobile=false&width=1329&height=1200&bga=true&needsRedirect=false&jan1offset=-480&jun1offset=-420');


insert into job(recEmail,jobTitle,companyName,companyWebsite,location,
jobDescription,desiredSkills,industry,employmentType,experienceLevel,
jobFunction,education,postTime,jobLink) values(
'sara@westvalley.com',
'Embedded Electronics Hardware Engineer',
'Intel',
'http://www.intel.com',
'Santa Clara, CA',
'Job Description: This is an exciting role in our New Devices Group. In this key role, you will deliver new "wearable" devices which meet the technical specification goals as defined by our marketing team and external partners. 

In this role, you will: 

Provide technical expertise to HW design, implementation, bring-up, validation and manufacturing test support. 
Work cross-functionally with product design teams to understand requirements and drive development and resolution of technical issues. 
Refine and implement core hardware architecture and select key components. 
Have ownership of HW system for technical accuracy and completeness. Ensure that HW performance goals are met. 
Responsible for hardware validation, testing and reporting. 
Design for manufacturability and serviceability. 
Work with operations teams with CM and/or ODM partners to insure smooth product transition into volume manufacturing.',
'Possess a B.S. degree in Electrical Engineering or related field, MSEE preferred. 

Minimum 5-8 years experience (BSEE) or 3-5 years experience (MSEE) in hardware engineering for consumer electronics 
Understanding of consumer electronics development process and methodology 
Knowledge of mobile and/or low-power platforms and the related architectural tradeoffs 

Industry experience in two or more of the following: 

Schematic and board design, PCB technologies. Design tools such as Cadence 
Board bring-up, test and debug with software teams 
Selection and use of SoCs for mobile product design 
Battery technology, power system architecture and design 
Sensors and displays for wearable type products/consumer electronics 

General: 

Excellent communication, technical writing and presentation skills 
Strong problem solving skills and ability to apply critical thinking 
Ability to work independently, be proactive, and exhibit strong influencing and leadership skills 
Disciplined and results oriented with ability to heavily multitask 
Strong background in electronics design, test, bring-up and debug',
'Electrical/Computer Engineering',
'Full-time',
'Entry level',
'Engineering',
'BS in electrical, computer, or robotics engineering or related field',
'2016-04-08',
'http://jobs.intel.com/ShowJob/Id/811843/HW%20Engineer%20(EE)%20%20%20Wearable%20Devices');


insert into job(recEmail,jobTitle,companyName,companyWebsite,location,
jobDescription,desiredSkills,industry,employmentType,experienceLevel,
jobFunction,education,postTime,jobLink) values(
'sara@westvalley.com',
'Software Development Engineer',
'Yahoo',
'https://www.yahoo.com/',
'Sunnyvale, CA',
'Contribute significant tested, high-quality, reusable, elegant code.
Navigate the serving stack from browser to API with ease, across multiple technologies, and languages.
Partner with Product and Design to build and implement solutions.
Test your own code using Test Driven Development techniques both unit and functional.
Contribute to engineering best practices, architecture, and implementations.
Own project/features development with minimal supervision, learn, and apply new technologies quickly and without reticence.
Maintain and improve existing code with a pride of ownership including up-to-date documentation on processes and code.',
'Familiar with technologies distributed systems, cloud computing, Web services, and communications protocols with understanding of full serving architecture including use of HTTP proxies, Memcache, Traffic Server or Squid.
Solid understanding of algorithms, data structures, algorithm design, and problem solving, with some combination of JavaScript, Nodejs, Java, PHP, C++, Python, Perl, and/or Mobile.
Solid experience with Web technologies, e.g., Apache, proxy servers, HTTP, REST, JSON, AJAX, JavaScript.
Proficiency in Unix/Linux tools and utilities with familiar with client and server performance optimization techniques, profiling, debugging.
Experience with test engineering including unit/functional testing, Continuous Integration philosophies and practices, exposure to Test Driven Development, Agile/Scrum methodologies.
Strong verbal and written communication skills with great sense of responsibility and attention to detail.',
'Computer Science/Software Engineering',
'Full-time',
'Entry level',
'Engineering',
'Masters or Ph.D. degree in Computer Science',
'2016-02-19',
'https://tas-yahoo.taleo.net/careersection/yahoo_global_cs/jobdetail.ftl?job=1545149&src=SNS-10032&lang=en&ylng=en&yloc=false');

insert into job(recEmail,jobTitle,companyName,companyWebsite,location,
jobDescription,desiredSkills,industry,employmentType,experienceLevel,
jobFunction,education,postTime,jobLink) values(
'sara@westvalley.com',
'Data Analyst',
'Facebook',
'https://www.facebook.com/',
'Menlo Park, CA',
'Facebook was built to help people connect and share, 
and over the last decade our tools have played a critical 
part in changing how people around the world communicate with one another. 
With over a billion people using the service and more than 
fifty offices around the globe, a career at Facebook offers 
countless ways to make an impact in a fast growing organization.
Nearly 400 million people use Instagram each month to connect with friends, 
family, and public figures. A big part of this social connection 
is the ongoing social conversation that takes place on Facebook 
about the latest breaking news, award show, and sporting event 
being watched all around the world.
As a data analyst on the communications team, 
your primary focus will be using data to bring these big 
consumer public moments to life, particularly in relation 
to important world news moments and special events.
This position is full-time and based in Menlo Park.',
'3+ years of data related working experience
Advanced degree in psychology, statistics, economics, behavioral
 or social science or a related quantitative field preferred
Experience with statistical and data analysis using SQL or similar (HIVE experience a plus)',
'Computer Science/Software Engineering',
'Full-time',
'Entry level',
'Information Technology,Analyst',
'Masters or Ph.D. degree in Computer Science',
'2016-03-08',
'https://www.facebook.com/careers/jobs/a0I1200000IAFNeEAP/');

insert into job(recEmail,jobTitle,companyName,companyWebsite,location,
jobDescription,desiredSkills,industry,employmentType,experienceLevel,
jobFunction,education,postTime,jobLink) values(
'sara@westvalley.com',
'Software Development Engineer',
'Microsoft',
'https://www.microsoft.com/en-us/',
'Redmond, WA',
'Ever wanted to work with the latest Microsoft devices and services 
technologies and partner with the world top developers. 
Our partners are building amazing applications and we are 
looking for a software engineer with strong developer skills 
to join the DX Technical Team with the objective to drive 
adoption and development of industry leading applications 
and services across devices and work to provide feedback to 
engineering on adjustments to our products. 
The candidate will need to demonstrate deep technical knowledge 
and development expertise necessary to develop the most leading-edge 
applications specifically focusing on the client technologies.
 The candidate will have the technical expertise and problem 
solving skills to build strong, influential relationships with 
partners by helping them solve their most complex technical 
problems and build strong relationships with engineering. 
As part of the role, the candidate will need to work closely 
with other engineering groups, provide partner feedback, 
and influence the roadmap for future product releases. 
The candidate will also engage with partners to chart their 
applications architectural direction and develop the resulting 
solutions. Based on their deep expertise developing this software, 
the candidate will present at top industry events.',
'Alternatively (no degree) minimum of eight years of professional software development experience
Proficiency developing in a modern programming language, such as C++, Java, C#, Python, or Ruby
Proficiency in design and analysis of algorithms and data structures
Knowledge of Operating Systems and their security features
Detailed technical knowledge of systems and network security, authentication and security protocols, 
applied cryptography, and application security
Proficiency in object-oriented design
Effective verbal and written communication skills',
'Computer Science/Software Engineering',
'Full-time',
'Entry level',
'Engineering',
'Masters or Ph.D. degree in Computer Science',
'2016-04-08',
'https://careers.microsoft.com/resumepreview.aspx?aid=218760&utm_source=linkedin');


