-- Drop the database if it exists
DROP DATABASE IF EXISTS btpproject CASCADE;

-- Create the database
CREATE DATABASE IF NOT EXISTS btpproject;
USE btpproject;

-- Drop and create the participant table
DROP TABLE IF EXISTS participant;
CREATE TABLE IF NOT EXISTS participant (
    participantid STRING,
    name STRING,
    age INT,
    gender STRING,
    dob STRING
) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE
LOCATION 'hdfs://namenode:8020/user/hive/warehouse/btpproject.db/participant';

-- Drop and create the participanttest table
DROP TABLE IF EXISTS participanttest;
CREATE TABLE IF NOT EXISTS participanttest (
    id INT,
    participantid STRING,
    testid INT,
    testdate STRING
) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;

-- Drop and create the refractiveerror table
DROP TABLE IF EXISTS refractiveerror;
CREATE TABLE IF NOT EXISTS refractiveerror (
    id INT,
    participantid STRING,
    objectiverefractionre STRING,
    objectiverefractionle STRING,
    subjectiverefractionre STRING,
    subjectiverefractionle STRING,
    distanceod STRING,
    distanceos STRING,
    distanceou STRING,
    nearod STRING,
    nearos STRING,
    nearou STRING
) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;

-- Drop and create the familyvisualhistory table
DROP TABLE IF EXISTS familyvisualhistory;
CREATE TABLE IF NOT EXISTS familyvisualhistory (
    id INT,
    participantid STRING,
    familygeneticproblems STRING,
    visualchallenges STRING
) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;

-- Drop and create the visionhistory table
DROP TABLE IF EXISTS visionhistory;
CREATE TABLE IF NOT EXISTS visionhistory (
    id INT,
    participantid STRING,
    headeyeinjuryreason STRING,
    discomfortineye STRING,
    anypatch STRING,
    usingglasses STRING,
    usingcontactlenses STRING
) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;

-- Drop and create the screentimecomplaints table
DROP TABLE IF EXISTS screentimecomplaints;
CREATE TABLE IF NOT EXISTS screentimecomplaints (
    id INT,
    participantid STRING,
    complaints STRING
) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;

-- Drop and create the generalhistory table
DROP TABLE IF EXISTS generalhistory;
CREATE TABLE IF NOT EXISTS generalhistory (
    id INT,
    participantid STRING,
    averagescreentime STRING,
    outdooractivitytime STRING,
    hoursofsleep STRING,
    surroundinglight STRING,
    vitamindeficiency STRING,
    iriscolor STRING
) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;

-- Drop and create the testsdone table
DROP TABLE IF EXISTS testsdone;
CREATE TABLE IF NOT EXISTS testsdone (
    id INT,
    participantid STRING,
    bsv STRING,
    plr STRING,
    visualacuitytest STRING,
    ishiharatest STRING,
    synoptaphore STRING
) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;

-- Drop and create the primaryobservations table
DROP TABLE IF EXISTS primaryobservations;
CREATE TABLE IF NOT EXISTS primaryobservations (
    id INT,
    participantid STRING,
    observationdetails STRING
) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;

-- Drop and create the specifictests table
DROP TABLE IF EXISTS specifictests;
CREATE TABLE IF NOT EXISTS specifictests (
    id INT,
    participantid STRING,
    duochrometest STRING,
    hirschbergtest STRING,
    coveruncovertest STRING,
    rapdtest STRING,
    ocularadnexa STRING,
    worthforthdottest STRING,
    isiharanumber INT,
    participationnumber INT
) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;

-- Drop and create the synoptophore table
DROP TABLE IF EXISTS synoptophore;
CREATE TABLE IF NOT EXISTS synoptophore (
    id INT,
    participantid STRING,
    fusionrighteye STRING,
    fusionlefteye STRING,
    fusioncomments STRING,
    smprighteye STRING,
    smplefteye STRING,
    smpcomments STRING,
    stereopsis STRING
) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;

-- Drop and create the complaints table
DROP TABLE IF EXISTS complaints;
CREATE TABLE IF NOT EXISTS complaints (
    id INT,
    participantid STRING,
    blurringvision STRING,
    eyestrain STRING,
    headache STRING,
    doublevision STRING,
    otherproblems STRING
) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;

-- Drop and create the birthhistory table
DROP TABLE IF EXISTS birthhistory;
CREATE TABLE IF NOT EXISTS birthhistory (
    id INT,
    participantid STRING,
    birthweight FLOAT,
    gestationperiod STRING,
    birthcry STRING,
    birthcomplication STRING,
    developmentalmilestones STRING
) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;

-- Drop and create the additionalinformation table
DROP TABLE IF EXISTS additionalinformation;
CREATE TABLE IF NOT EXISTS additionalinformation (
    id INT,
    participantid STRING,
    usageofcomputers STRING,
    doctorsreport STRING,
    otherinformation STRING,
    babygivenoxygen STRING,
    maternalhealth STRING,
    parentsage STRING,
    naturalormedicationbirth STRING,
    siblingsrelevanthistory STRING,
    colourvision STRING,
    chinheadposition STRING,
    facialasymmetry STRING,
    ocularsymmetry STRING,
    vertigocomplaints STRING,
    anteriorposteriorsegmentexamination STRING
) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
