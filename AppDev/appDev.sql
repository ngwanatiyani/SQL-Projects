-- Create the AppDev database
CREATE DATABASE AppDev;

-- Use the database
USE AppDev;

-- Create the students table
CREATE TABLE students (
    studentID INT AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    age INT NOT NULL CHECK (age BETWEEN 18 AND 25),
    gender ENUM('Male', 'Female', 'Other') NOT NULL,
    province VARCHAR(50) NOT NULL,
    residence VARCHAR(50) NOT NULL,
    module1 DECIMAL(5, 2) NOT NULL,
    module2 DECIMAL(5, 2) NOT NULL,
    module3 DECIMAL(5, 2) NOT NULL,
    module4 DECIMAL(5, 2) NOT NULL,
    module5 DECIMAL(5, 2) NOT NULL,
    module6 DECIMAL(5, 2) NOT NULL,
    module7 DECIMAL(5, 2) NOT NULL,
    module8 DECIMAL(5, 2) NOT NULL,
    avgScore DECIMAL(5, 2) GENERATED ALWAYS AS (
        (module1 + module2 + module3 + module4 + module5 + module6 + module7 + module8) / 8
    ) VIRTUAL,
    qualificationStatus ENUM('Qualified', 'Not Qualified') GENERATED ALWAYS AS (
        CASE
            WHEN module1 >= 90 AND module2 >= 90 AND module3 >= 90 AND module4 >= 90
                 AND module5 >= 90 AND module6 >= 90 AND module7 >= 90 AND module8 >= 90
            THEN 'Qualified'
            ELSE 'Not Qualified'
        END
    ) VIRTUAL
)

-- Different students under AppDev course
INSERT INTO students (firstName, lastName, age, gender, province, residence, module1, module2, module3, module4, module5, module6, module7, module8)
VALUES
    ('Sipho', 'Mkhize', 21, 'Male', 'Gauteng', 'Langalethu', 95, 92, 90, 93, 94, 96, 97, 91),
    ('Lebo', 'Mofokeng', 22, 'Female', 'Free State', 'Imbali', 88, 85, 87, 86, 89, 84, 83, 86),
    ('Thabo', 'Zulu', 20, 'Male', 'KwaZulu-Natal', 'Tshiwela', 90, 91, 93, 94, 92, 95, 96, 97),
    ('Ayesha', 'Khan', 19, 'Female', 'Western Cape', 'Jubilee', 78, 82, 80, 79, 81, 77, 76, 83),
    ('Dineo', 'Moloi', 23, 'Female', 'North West', 'Langalethu', 93, 94, 92, 91, 94, 95, 93, 92),
    ('Mandla', 'Ngwenya', 21, 'Male', 'Mpumalanga', 'Umthombo', 85, 84, 83, 82, 81, 85, 87, 86),
    ('Rachel', 'Smith', 20, 'Female', 'Limpopo', 'Imbali', 96, 94, 93, 92, 90, 91, 92, 95),
    ('Lunga', 'Nkosi', 22, 'Male', 'Eastern Cape', 'Langalethu', 81, 83, 80, 79, 78, 76, 84, 85),
    ('Kamogelo', 'Mashaba', 24, 'Female', 'Northern Cape', 'Jubilee', 98, 97, 99, 100, 97, 96, 95, 94),
    ('John', 'Doe', 18, 'Male', 'Western Cape', 'Imbali', 72, 74, 73, 70, 69, 75, 77, 76),
    ('Nomfundo', 'Maseko', 21, 'Female', 'KwaZulu-Natal', 'Langalethu', 92, 91, 90, 94, 93, 95, 97, 96),
    ('Palesa', 'Sithole', 20, 'Female', 'Gauteng', 'Tshiwela', 88, 90, 91, 85, 89, 93, 92, 91),
    ('Jabu', 'Mhlongo', 22, 'Male', 'KwaZulu-Natal', 'Jubilee', 92, 90, 94, 93, 91, 94, 95, 97),
    ('Lerato', 'Tshabalala', 23, 'Female', 'Free State', 'Imbali', 93, 92, 91, 94, 93, 97, 98, 96),
    ('Dumisani', 'Khanyile', 21, 'Male', 'Limpopo', 'Langalethu', 87, 85, 88, 89, 90, 91, 93, 91),
    ('Khanya', 'Peters', 19, 'Female', 'Eastern Cape', 'Tshiwela', 98, 97, 100, 99, 96, 95, 94, 98),
    ('Zanele', 'Ndaba', 24, 'Female', 'Mpumalanga', 'Jubilee', 95, 92, 91, 89, 94, 93, 95, 90),
    ('Sibusiso', 'Ngcobo', 22, 'Male', 'North West', 'Imbali', 84, 86, 88, 85, 89, 90, 92, 94),
    ('Tinashe', 'Chirwa', 20, 'Male', 'KwaZulu-Natal', 'Langalethu', 95, 94, 96, 97, 93, 92, 91, 90),
    ('Tebogo', 'Motsumi', 23, 'Female', 'Gauteng', 'Jubilee', 85, 84, 88, 86, 90, 92, 89, 91),
    ('Mpho', 'Makgoba', 21, 'Male', 'Western Cape', 'Langalethu', 92, 94, 93, 91, 90, 92, 94, 96),
    ('Ndivhuwo', 'Ramalema', 19, 'Female', 'Limpopo', 'Tshiwela', 90, 94, 92, 95, 96, 93, 97, 91),
    ('Rea', 'Mokgadi', 22, 'Female', 'Northern Cape', 'Imbali', 83, 85, 84, 87, 82, 83, 81, 80),
    ('Vusimuzi', 'Gwala', 24, 'Male', 'Free State', 'Tshiwela', 90, 88, 92, 93, 91, 95, 93, 92),
    ('Mpho', 'Banda', 21, 'Male', 'Gauteng', 'Langalethu', 97, 98, 96, 99, 95, 94, 93, 92),
    ('Thandeka', 'Shabangu', 23, 'Female', 'KwaZulu-Natal', 'Langalethu', 85, 82, 88, 90, 91, 89, 86, 87),
    ('Lindokuhle', 'Mthembu', 20, 'Male', 'Limpopo', 'Imbali', 91, 94, 96, 95, 93, 90, 92, 91),
    ('Boitumelo', 'Motsepe', 22, 'Female', 'Mpumalanga', 'Tshiwela', 95, 96, 97, 94, 92, 91, 89, 93),
    ('Anele', 'Sithole', 21, 'Male', 'North West', 'Imbali', 93, 92, 91, 90, 94, 95, 92, 91),
    ('Bongani', 'Phakathi', 22, 'Male', 'Eastern Cape', 'Jubilee', 98, 97, 99, 100, 97, 96, 94, 92),
    ('Lungi', 'Dlamini', 20, 'Female', 'KwaZulu-Natal', 'Langalethu', 92, 91, 90, 93, 91, 92, 96, 95),
    ('Siyabonga', 'Ngcobo', 23, 'Male', 'Gauteng', 'Tshiwela', 89, 88, 87, 84, 85, 86, 83, 88),
    ('Pumla', 'Ndlovu', 21, 'Female', 'Western Cape', 'Imbali', 80, 81, 79, 80, 77, 79, 75, 78),
    ('Mthembu', 'Nkosi', 22, 'Male', 'KwaZulu-Natal', 'Jubilee', 93, 95, 92, 94, 90, 91, 96, 98),
    ('Kholeka', 'Zuma', 24, 'Female', 'Eastern Cape', 'Tshiwela', 88, 92, 90, 91, 93, 90, 94, 95),
    ('Njabulo', 'Mkhize', 23, 'Male', 'Limpopo', 'Langalethu', 92, 94, 91, 95, 96, 97, 94, 92),
    ('Itumeleng', 'Modise', 21, 'Male', 'North West', 'Jubilee', 84, 85, 86, 87, 88, 90, 89, 93),
    ('Marlene', 'Khumalo', 22, 'Female', 'Free State', 'Langalethu', 94, 93, 95, 96, 90, 91, 92, 93),
    ('Nkosi', 'Bhengu', 21, 'Male', 'KwaZulu-Natal', 'Tshiwela', 91, 94, 92, 97, 95, 96, 97, 94),
    ('Zanele', 'Makhanya', 22, 'Female', 'Gauteng', 'Imbali', 85, 90, 91, 89, 86, 88, 87, 90),
    ('Sibusiso', 'Khulu', 24, 'Male', 'Limpopo', 'Langalethu', 89, 90, 92, 94, 95, 96, 98, 94),
    ('Siphiwe', 'Masinga', 21, 'Male', 'Western Cape', 'Jubilee', 93, 94, 96, 97, 90, 89, 88, 92),
    ('Thando', 'Sibeko', 22, 'Female', 'KwaZulu-Natal', 'Langalethu', 93, 95, 94, 97, 92, 93, 90, 94),
    ('Pule', 'Radebe', 21, 'Male', 'North West', 'Imbali', 89, 87, 92, 90, 91, 94, 93, 95),
    ('Lerato', 'Mphahlele', 22, 'Female', 'Free State', 'Langalethu', 94, 96, 97, 95, 93, 94, 91, 90),
    ('Tumelo', 'Ngomane', 23, 'Male', 'Mpumalanga', 'Tshiwela', 96, 95, 94, 92, 98, 94, 92, 93);

SELECT *
FROM students
WHERE qualificationStatus = 'Qualified';

-- Query to get the average scores of all students
SELECT firstName, lastName, avgScore
FROM students
ORDER BY avgScore DESC;

-- Query to count the number of qualified students per province
SELECT province, COUNT(*) AS qualifiedStudents
FROM students
WHERE qualificationStatus = 'Qualified'
GROUP BY province;
