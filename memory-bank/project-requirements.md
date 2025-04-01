# Project Requirements Document  
## Project Title: Homeless Tracker App  
**Date:** April 01, 2025  
**Version:** 1.1  

---

## 1. Project Overview  

### 1.1 Purpose  
The Homeless Tracker App is designed to assist in monitoring and managing homeless individuals within a specific area using a consent-driven hybrid approach of QR code check-ins and community reporting. The app aims to provide a comprehensive view of homeless communities, enabling users to assess societal trends and individual needs to offer targeted assistance effectively.

### 1.2 Goals  
- Provide a clear, broad overview of homeless populations in a designated area.  
- Enable zooming out to analyze societal implications and zooming in to assess individual circumstances.  
- Facilitate tracking and support for homeless individuals awaiting hospitalization or shelter placement without invasive technology.  

### 1.3 Stakeholders  
- **Primary User:** Project initiator (you), responsible for monitoring and assisting homeless individuals.  
- **End Users:** Homeless individuals voluntarily participating via QR code check-ins.  
- **Contributors:** Social workers, volunteers, or community members providing reports.  
- **Potential Collaborators:** Hospitals, shelters, and local authorities (to be determined).  

---

## 2. Functional Requirements  

### 2.1 User Profiles  
- **Data Collection:**  
  - Profile photo of each individual (optional, taken with consent).  
  - Personal data:  
    - First name  
    - Last name  
    - Nickname  
    - Date of birth  
  - Status indicators:  
    - Awaiting hospitalization (Yes/No)  
    - Awaiting shelter placement (Yes/No)  
    - Employment status (Employed/Unemployed)  
    - Temporary shelter status (Yes/No)  
- **Profile Management:**  
  - Ability to add, edit, or remove individual profiles via app or check-in stations.  
  - Secure storage of personal data with privacy considerations.  

### 2.2 Location Tracking  
- **QR Code Check-In System:**  
  - Issue unique QR codes (e.g., on cards or keychains) to participating individuals.  
  - Install QR scanners at key locations (e.g., shelters, clinics) to log presence.  
  - Record timestamped location data when an individual scans their QR code.  
- **Community Reporting:**  
  - Allow authorized users (e.g., social workers) to submit geotagged reports of individual sightings or interactions.  
  - Include fields for location, status updates, and optional notes.  
- **Tracking Features:**  
  - Display last known locations on a map based on check-ins and reports.  
  - Infer movement trends from timestamped data (e.g., frequency of check-ins at different locations).  

### 2.3 Area Analysis  
- **Aggregation Tools:**  
  - Count the number of individuals checked in or reported within a user-defined area (e.g., radius or custom boundary).  
  - Filter individuals by status (e.g., awaiting hospitalization, employed).  
- **Visualization:**  
  - Map-based interface with zoom-in/zoom-out functionality.  
  - Markers or heatmaps to represent check-in/report density or status.  

### 2.4 Reporting  
- **Summary Reports:**  
  - Total number of individuals in an area based on recent check-ins/reports.  
  - Breakdown by status (e.g., employed, awaiting shelter).  
  - Movement trends (e.g., frequency of location changes).  
- **Individual Reports:**  
  - Detailed view of a selected individual’s profile, last known location, and status history.  

---

## 3. Non-Functional Requirements  

### 3.1 Usability  
- Intuitive interface for primary users, check-in staff, and community reporters.  
- Mobile and desktop compatibility for broader accessibility.  

### 3.2 Performance  
- Process check-in and report data with minimal delay (e.g., updates within 1-2 minutes).  
- Handle data for at least 100 individuals initially, scalable to thousands.  

### 3.3 Security  
- Encrypted storage and transmission of personal data.  
- User authentication for app access and reporting privileges.  

### 3.4 Privacy  
- Voluntary participation with clear consent for QR code usage and reporting.  
- Compliance with data protection regulations (e.g., GDPR, CCPA, if applicable).  

---

## 4. Technical Requirements  

### 4.1 Platform  
- Mobile app (iOS and Android) and/or web-based application.  

### 4.2 Hardware Integration  
- QR code scanners or mobile devices with cameras at check-in points.  
- Printed QR codes on durable, portable mediums (e.g., laminated cards).  

### 4.3 Backend  
- Database to store profiles, check-in logs, and community reports.  
- API for processing QR scans and manual report submissions.  

### 4.4 Frontend  
- Map integration (e.g., Google Maps, OpenStreetMap).  
- Interactive dashboard for data visualization, filtering, and reporting.  
- Simple form for community reporting with geotagging capability.  

---

## 5. Assumptions and Constraints  

### 5.1 Assumptions  
- Some homeless individuals will agree to use QR codes for check-ins.  
- Community members (e.g., social workers) are willing to submit reports.  
- Check-in stations can be established at key locations with staff or volunteers.  

### 5.2 Constraints  
- Location data limited to check-in points and reported sightings, not continuous tracking.  
- Dependent on individuals carrying QR codes and community participation.  
- Ethical considerations around consent and visibility of vulnerable populations.  

---

## 6. Deliverables  

- Fully functional Homeless Tracker App (mobile and/or web).  
- QR code generation and distribution system.  
- User manual for app operation, check-ins, and reporting.  
- Technical documentation for maintenance and scalability.  
- Initial batch of QR codes (quantity TBD).  

---

## 7. Milestones  

1. **Requirements Finalization:** Define detailed specs and QR code logistics (2-4 weeks).  
2. **Prototype Development:** Basic app with map, profiles, and check-in/report features (6-8 weeks).  
3. **Testing Phase:** QR system integration and user testing (4-6 weeks).  
4. **Deployment:** Launch app, distribute QR codes, and train reporters (2-4 weeks).  

---

## 8. Future Considerations  

- Integration with social services (e.g., notifications to hospitals or shelters).  
- Analytics for long-term trends based on check-in and report data.  
- Expansion to additional regions or hybrid methods (e.g., optional Bluetooth tags).  

---

This revised document shifts the focus to a consent-driven, less invasive approach while maintaining core functionality. Let me know if you’d like further refinements or additional details!