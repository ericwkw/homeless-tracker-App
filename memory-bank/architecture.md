# Architecture Document
## Project Title: Homeless Tracker App
**Date:** April 01, 2025
**Version:** 1.1

---

## Overview
This document outlines the architectural design of the Homeless Tracker App, detailing the system components, data flow, and technical considerations for implementation.

---

## System Architecture

### High-Level Architecture
The Homeless Tracker App follows a client-server architecture with:
- Mobile-first responsive web frontend (React)
- RESTful API backend (Node.js/Express)
- PostgreSQL database with PostGIS for geospatial data

### Component Diagram
```
┌─────────────────┐       ┌─────────────────┐       ┌─────────────────┐
│                 │       │                 │       │                 │
│  React Frontend │◄─────►│  Express Backend│◄─────►│  PostgreSQL DB  │
│                 │       │                 │       │                 │
└─────────────────┘       └─────────────────┘       └─────────────────┘
        ▲                         ▲                         ▲
        │                         │                         │
        ▼                         ▼                         ▼
┌─────────────────┐       ┌─────────────────┐       ┌─────────────────┐
│                 │       │                 │       │                 │
│   Google Maps   │       │   JWT Auth      │       │    PostGIS      │
│                 │       │                 │       │                 │
└─────────────────┘       └─────────────────┘       └─────────────────┘
```

---

## Implementation Details

### Current Implementation Status
- **Backend**: Basic Express server with core middleware (CORS, Helmet, JSON parsing)
- **Frontend**: React application with core libraries (Axios, React Router, Google Maps API, jsQR)
- **Development Environment**: Setup with npm scripts for both frontend and backend

### Backend Structure
```
backend/
├── config/         # Configuration files and environment variables
├── controllers/    # Business logic for routes
├── middleware/     # Custom middleware (auth, validation, etc.)
├── models/         # Database models and queries
├── routes/         # API route definitions
├── server.js       # Main application entry point
└── package.json    # Dependencies and scripts
```

### Frontend Structure
```
frontend/
├── public/         # Static assets
├── src/
│   ├── components/ # React components
│   ├── context/    # React context for state management
│   ├── utils/      # Utility functions and helpers
│   ├── App.js      # Main application component
│   └── index.js    # Application entry point
└── package.json    # Dependencies and scripts
```

---

## Key Components

### 1. Authentication System
- **Implementation:** JWT-based authentication with role-based access control
- **User Roles:**
  - Admin (Project Owner): Full access to all features and data
  - Volunteer: Ability to scan QR codes and request new codes for individuals
  - Community Reporter: Ability to submit location reports about homeless individuals
- **Security Measures:**
  - Token expiration and refresh mechanism
  - Password hashing with bcrypt
  - Role verification middleware

### 2. Profile Management
- **Features:** Create, read, update, and delete homeless individual profiles
- **Data Model:** Stores personal information (name, DOB) and status indicators (awaiting hospital, employed)
- **Privacy Measures:** Data minimization, purpose limitation, consent management

### 3. QR Code System
- **Generation:** Server-side generation of unique QR codes linked to individual profiles
- **Distribution:** Volunteers receive QR codes from project owner to distribute to homeless individuals
- **Tracking:** Monthly volunteer check-ins to verify QR code possession
- **Replacement:** Process for volunteers to request replacement codes

### 4. Location Tracking
- **Check-in Method:** QR code scanning at designated locations
- **Community Reporting:** Geotagged reports from authenticated community reporters
- **Data Storage:** Standardized location format using PostGIS (EPSG:4326/WGS84)
- **Visualization:** Interactive map showing check-ins and reports

### 5. Offline Functionality
- **Data Collection:** Support for offline QR scanning and report submission
- **Storage:** Local caching using IndexedDB or localStorage
- **Synchronization:** Automatic data sync when connectivity is restored
- **Map Support:** Cached map tiles for offline viewing

---

## Technical Insights & Updates

1. **Dependency Management**:
   - Backend uses Express 5.x with helmet for security
   - React 19.x with latest routing capabilities
   - Modern testing frameworks included in both frontend and backend

2. **Environment Considerations**:
   - Using dotenv for configuration management
   - Separate development and production settings

3. **Security Enhancement**:
   - Helmet middleware automatically applied for HTTP header security
   - CORS configured for cross-origin request handling

4. **Development Workflow**:
   - Nodemon for backend hot-reloading
   - Create React App for streamlined frontend development

---

## Data Flow

### QR Code Check-in Flow
1. Homeless individual presents QR code at check-in point
2. Volunteer/staff scans code using web app
3. App records location (GPS coordinates) and timestamp
4. Data is sent to backend (or stored locally if offline)
5. Backend validates QR code and updates individual's last known location
6. Confirmation is displayed to scanner

### Community Reporting Flow
1. Community reporter authenticates in the app
2. Reporter submits individual sighting with location and status details
3. App captures GPS coordinates (with user permission)
4. Report is submitted to backend (or stored locally if offline)
5. Backend validates and stores the report
6. Report appears on the map visualization

---
