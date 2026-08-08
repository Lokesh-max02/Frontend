CREATE DATABASE HospitalDB;

USE HospitalDB;
CREATE TABLE Department (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(100) NOT NULL
);
CREATE TABLE Doctor (
    doctor_id INT PRIMARY KEY AUTO_INCREMENT,
    doctor_name VARCHAR(100) NOT NULL,
    specialization VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100),
    department_id INT,

    FOREIGN KEY (department_id)
    REFERENCES Department(department_id)
);
CREATE TABLE Patient (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_name VARCHAR(100) NOT NULL,
    age INT,
    gender VARCHAR(20),
    phone VARCHAR(15),
    address VARCHAR(200)
);
CREATE TABLE Appointment (
    appointment_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    appointment_time TIME,
    reason VARCHAR(255),
    status VARCHAR(30) DEFAULT 'Scheduled',

    FOREIGN KEY (patient_id)
    REFERENCES Patient(patient_id),

    FOREIGN KEY (doctor_id)
    REFERENCES Doctor(doctor_id)
);
CREATE TABLE Treatment (
    treatment_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    doctor_id INT,
    treatment_name VARCHAR(150),
    description VARCHAR(255),
    treatment_date DATE,
    cost DECIMAL(10,2),

    FOREIGN KEY (patient_id)
    REFERENCES Patient(patient_id),

    FOREIGN KEY (doctor_id)
    REFERENCES Doctor(doctor_id)
);
CREATE TABLE Billing (
    bill_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    treatment_id INT,
    bill_date DATE,
    amount DECIMAL(10,2),
    payment_status VARCHAR(30) DEFAULT 'Pending',
    payment_method VARCHAR(30),

    FOREIGN KEY (patient_id)
    REFERENCES Patient(patient_id),

    FOREIGN KEY (treatment_id)
    REFERENCES Treatment(treatment_id)
);
INSERT INTO Department (department_name)
VALUES
('Cardiology'),
('Neurology'),
('Orthopedics'),
('General Medicine');
INSERT INTO Doctor
(doctor_name, specialization, phone, email, department_id)
VALUES
('Dr. Arun Kumar', 'Cardiologist', '9876543210',
 'arun@hospital.com', 1),
('Dr. Priya', 'Neurologist', '9876543211',
 'priya@hospital.com', 2),
('Dr. Rahul', 'Orthopedic Surgeon', '9876543212',
 'rahul@hospital.com', 3),
('Dr. Meena', 'General Physician', '9876543213',
 'meena@hospital.com', 4);
 INSERT INTO Patient
(patient_name, age, gender, phone, address)VALUES
('Lokesh', 21, 'Male', '9000000001', 'Chennai'),
('Arun', 35, 'Male', '9000000002', 'Coimbatore'),
('Priya', 28, 'Female', '9000000003', 'Madurai'),
('Divya', 45, 'Female', '9000000004', 'Salem');
INSERT INTO Appointment
(patient_id, doctor_id, appointment_date, appointment_time, reason) VALUES
(1, 1, '2026-08-10', '10:00:00', 'Chest Pain'),
(2, 3, '2026-08-11', '11:30:00', 'Knee Pain'),
(3, 2, '2026-08-12', '09:30:00', 'Headache'),
(4, 4, '2026-08-13', '14:00:00', 'Fever');
INSERT INTO Treatment
(patient_id, doctor_id, treatment_name, description, treatment_date, cost) VALUES
(1, 1, 'ECG', 'Heart examination', '2026-08-10', 1500.00),
(2, 3, 'X-Ray', 'Knee X-Ray', '2026-08-11', 1000.00),
(3, 2, 'MRI Scan', 'Brain MRI Scan', '2026-08-12', 5000.00),
(4, 4, 'General Checkup', 'Full body checkup', '2026-08-13', 2000.00);
INSERT INTO Billing
(patient_id, treatment_id, bill_date, amount, payment_status, payment_method) VALUES
(1, 1, '2026-08-10', 1500.00, 'Paid', 'Cash'),
(2, 2, '2026-08-11', 1000.00, 'Paid', 'UPI'),
(3, 3, '2026-08-12', 5000.00, 'Pending', NULL),
(4, 4, '2026-08-13', 2000.00, 'Paid', 'Card');
SELECT * FROM Doctor;