--load data from hospital csv into hospitals table
LOAD DATA LOCAL INFILE 'assessments/hpdm206Z/assessment1/hospitals.csv' INTO TABLE hospitals FIELDS TERMINATED BY ','  ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 LINES (HospitalID, Name, Address, Size, Type, Accreditation_Status); 

--load data from doctors csv into patients_doctors table
LOAD DATA LOCAL INFILE 'assessments/hpdm206Z/assessment1/doctors.csv' INTO TABLE patients_doctors FIELDS TERMINATED BY ','  ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 LINES (PersonID, Name, date_of_birth, Address, Role, HospitalID) SET DoctorID = NULL;

--load data from patients csv into patients_docotrs table
LOAD DATA LOCAL INFILE 'assessments/hpdm206Z/assessment1/patients.csv' INTO TABLE patients_doctors FIELDS TERMINATED BY ','  ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 LINES (PersonID,Name, date_of_birth, Address, Role, DoctorID);

--load data from prescriptions csv into prescriptions table
LOAD DATA LOCAL INFILE 'assessments/hpdm206Z/assessment1/prescriptions.csv' INTO TABLE prescriptions FIELDS TERMINATED BY ','  ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 LINES (PrescriptionID, PatientID, DoctorID, medication, Prescription_date);


