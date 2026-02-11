--Query 1.Print a list of all doctors based at a particular hospital.
SELECT HospitalID,Name AS Doctors_based_in_hospital
FROM patients_doctors
WHERE HospitalID=2;

--Query 2.Print a list of all prescriptions for a particular patient, ordered by the prescription date.
SELECT *
FROM  prescriptions
WHERE PatientID=345
ORDER BY Prescription_Date;

--Query 3.Print a list of all prescriptions that a particular doctor has prescribed.
SELECT *
FROM  prescriptions
WHERE DoctorID=2;

--Query 4.Add a new patient to the database, including being registered with one of the doctors.
INSERT INTO patients_doctors (PersonID,Name, date_of_birth, Address, Role, DoctorID)
VALUES (800,'Suzie Mcville','1975-03-01','(732) 441-9526 9 Joyce St Cliffwood, New Jersey(NJ), 07721','Patient',42);


--Query 5.Identify which doctor has made the most prescriptions.
SELECT DoctorID,COUNT(*) AS most_prescriptions
FROM prescriptions
GROUP BY DoctorID
HAVING COUNT(*) = (
      SELECT MAX(most_prescriptions)
      FROM (
        SELECT COUNT(*) AS most_prescriptions
        FROM    prescriptions
        GROUP BY DoctorID
      ) AS number_per_doctor
  );


--Query 6.Print a list of all doctors at the hospital with biggest size (number of beds).
SELECT b2.Size,b2.HospitalID,b1.Name
FROM hospitals b2
INNER JOIN patients_doctors b1 USING (HospitalID)
WHERE b2.Size = (SELECT MAX(Size) FROM  hospitals);

