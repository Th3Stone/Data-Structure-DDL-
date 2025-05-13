# Data-Structure-DDL-
This is the structure of the database needed for a medical platform. (Sample Data included) 
This is an overview of what the database tries to achieve: 

1. Patient Registration and Medical Records
Patients can access the clinic’s services through a Self-Service Patient Portal, where they can log in, view available consultation slots, and book appointments. This system is designed to reduce the administrative workload for clinic staff while enhancing patient convenience. The user account management system manages authentication and role-based access, ensuring that patients, doctors, and administrators have appropriate permissions. When a patient schedules an appointment, an entry is created in the appointment tracking system, which records the date, time, type, and status of the booking.
1.1 Real-Time Scheduling Module
To ensure that patients can only book available time slots, the system incorporates a RealTime Scheduling Module managed entirely by the clinic’s system. The system stores all doctors’ schedules, including available working hours, booked slots, and breaks, ensuring accurate real-time scheduling. The doctor’s scheduling system prevents double bookings and ensures only open slots are displayed in the patient booking portal.
1.2 Appointment Notifications & Urgent Bookings
To minimize no-shows, the automated notification system automates reminders via SMS, email, or in-app notifications. Patients can also choose their preferred doctor based on specialization, which is stored in the Doctor entity. Urgent cases can be flagged as priority bookings for same-day or cancellation-based scheduling.
2. Online Consultation Booking
Patients complete Digital Registration Forms, which create records in the patient records database. Each patient is assigned a unique medical record in the medical history database, consolidating all interactions, treatments, and test results.
The system integrates with AASANDA (as a hypothetical scenario), a government-managed healthcare system similar to Medicare, which stores patient medical histories, previous treatments, prescriptions, and test results. This integration allows the clinic to retrieve up-to-date patient information, ensuring that doctors have access to past medical data when making treatment decisions.
A Patient Dashboard provides a user-friendly interface where patients can view their medical history and ongoing treatments.
3. Work Permit Medical Registry
For corporate clients, a Business Client Portal provides an interface where companies can manage Work Permit Medicals for their employees. The corporate client management system tracks corporate clients, while the employee medical records system records individual workers undergoing medical clearance.
4. Medical Examination and Doctor Review
Once tests are completed, a doctor must review and sign off before issuing a Work Permit
Medical Certificate. If necessary, the doctor may request additional tests or further reviews
before making a final decision. The work permit medical assessment system ensures
certification only by authorized doctors. Employers download the certificate via the portal,
and compliance actions are tracked in the system audit log.
5. Report Management and Delivery
Patients and business clients can access reports via a secure report access system, ensuring
only authorized users retrieve medical information.
6. Work Permit Medical Process Automation
Before the appointment, the system verifies required documents, flagging missing or
incorrect submissions for correction. Upon test completion, results are reported directly to
employers via the Business Client Portal, eliminating automatic submission to government
agencies.
7. Medical Tests for All Patients
A central medical test catalog system maintains a list of all available medical tests offered by the clinic. This entity ensures that both general patients and employees undergoing Work
Permit Medicals have access to standardized diagnostic tests. Each test in the catalog includes details such as test name, description, and required procedures. The test results database links patient-specific test orders.
8. Advanced Data Analytics and Reporting
A Performance Dashboard provides insights into patient flow, test status, and operational
efficiency. Predictive analytics aid in decision-making, allowing administrators to generate
Custom Reports covering patient wait times, staff efficiency, and clinic performance. 

