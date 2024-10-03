**Problem Statement** 
Student-Course Enrollment System
This system manages student information, courses offered by an institution,
and the enrollment of students in courses. It keeps track of each student’s 
enrollment year and the courses they are currently taking. Additionally, the system allows for
updates to student records, course details, and the removal of students or courses as needed.
**Database Structure**
students: Stores information about students such as their ID, first name, last name, and the year they enrolled.
courses: Stores the details of the courses, including the course name and description.
student_courses: Links students and courses to track which students are enrolled in which courses. 
This is a many-to-many relationship because a student can enroll in multiple courses, and a course can have many students
