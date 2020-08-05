--------------------------------------------------------
--  Load Data for Table ADMISSIONS
--------------------------------------------------------

\copy ADMISSIONS FROM '../../data/raw/ADMISSIONS.csv' DELIMITER ',' CSV HEADER NULL ''

--------------------------------------------------------
--  Load Data for Table MICROBIOLOGYEVENTS
--------------------------------------------------------

\copy MICROBIOLOGYEVENTS from '../../data/raw/MICROBIOLOGYEVENTS.csv' delimiter ',' csv header NULL ''

--------------------------------------------------------
--  Load Data for Table PATIENTS
--------------------------------------------------------

\copy PATIENTS from '../../data/raw/PATIENTS.csv' delimiter ',' csv header NULL ''
