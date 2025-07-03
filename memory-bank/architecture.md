# Architecture Document
## Project Title: Homeless Tracker App
**Date:** July 03, 2025
**Version:** 2.0

---

## Overview
This document outlines the architectural design of the Homeless Tracker App, detailing the system components, data flow, and technical considerations for implementation using the new Supabase, Next.js, Vercel, and Expo stack.

---

## System Architecture

### High-Level Architecture
The Homeless Tracker App follows a modern client-serverless architecture with:
- Web Frontend (Next.js) deployed on Vercel
- Mobile Frontend (Expo/React Native) for iOS and Android
- Backend-as-a-Service (Supabase) for database, authentication, and real-time capabilities

### Component Diagram
```
┌─────────────────┐       ┌─────────────────┐       ┌─────────────────┐
│                 │       │                 │       │                 │
│  Next.js Web    │◄─────►│                 │◄─────►│                 │
│    Frontend     │       │                 │       │                 │
└─────────────────┘       │    Supabase     │       │  PostgreSQL DB  │
        ▲                 │                 │       │                 │
        │                 │                 │       │                 │
┌─────────────────┐       │                 │       └─────────────────┘
│                 │       │                 │
│  Expo Mobile    │◄─────►│                 │
│    Frontend     │       │                 │
└─────────────────┘       └─────────────────┘
        ▲                         ▲
        │                         │
        ▼                         ▼
┌─────────────────┐       ┌─────────────────┐
│                 │       │                 │
│   Google Maps   │       │   Supabase      │
│                 │       │   Auth          │
└─────────────────┘       └─────────────────┘
```

---

## Implementation Details

### Current Implementation Status
- **Web Application (Next.js)**: Initialized and configured with Supabase client, authentication context, and basic API routes.
- **Mobile Application (Expo)**: Initialized and configured with Supabase client, authentication context, and necessary Expo modules.
- **Supabase**: Project created, database schema defined (`individuals`, `check_ins`, `reports`), and initial RLS policies set up.
- **Deployment**: Next.js application is deployed on Vercel.

### Project Structure
```
homeless-tracker/
├── web-app/        # Next.js web application (frontend and API routes)
├── mobile-app/     # Expo mobile application (iOS and Android frontend)
└── memory-bank/    # Project documentation, plans, and SQL schema files
```

---

## Key Components

### 1. Authentication System
- **Implementation:** Supabase Auth for user management (email/password, social logins).
- **User Roles:** Managed via Supabase RLS and potentially custom user metadata.
- **Security Measures:** Leverages Supabase's built-in security, including JWTs, secure password storage, and Row Level Security (RLS).

### 2. Profile Management
- **Features:** Create, read, update, and delete homeless individual profiles.
- **Data Model:** Stored in Supabase `individuals` table.
- **Privacy Measures:** Enforced via Supabase RLS policies to control data access based on user roles.

### 3. QR Code System
- **Generation:** Can be handled by the application (e.g., using a library) and stored in Supabase.
- **Distribution:** Volunteers distribute physical QR codes.
- **Scanning:** Implemented in both web (jsQR) and mobile (expo-barcode-scanner) applications.

### 4. Location Tracking
- **Check-in Method:** QR code scanning at designated locations, recording location data in Supabase `check_ins` table.
- **Community Reporting:** Geotagged reports from authenticated users stored in Supabase `reports` table.
- **Data Storage:** Supabase PostgreSQL database.
- **Visualization:** Interactive map in both web and mobile applications, fetching data from Supabase.

### 5. Offline Functionality
- **Data Collection:** To be implemented using client-side caching mechanisms (e.g., React Query, local storage) with Supabase synchronization.
- **Synchronization:** Data will sync with Supabase when connectivity is restored.

---

## Technical Insights & Updates

1. **Managed Backend:** Supabase significantly reduces the need for custom backend development and server management.
2. **Unified Development:** Next.js allows for a single codebase for web frontend and API routes, simplifying development and deployment.
3. **Cross-Platform Mobile:** Expo enables efficient development of native iOS and Android applications from a single React Native codebase.
4. **Serverless Deployment:** Vercel provides automatic, serverless deployment for the Next.js application.
5. **Environment Variables:** Securely managed via Vercel and Expo's built-in mechanisms.

---

## Data Flow

### General Data Flow
- Both Next.js (web) and Expo (mobile) applications interact directly with Supabase using the Supabase client library.
- Supabase handles database operations, authentication, and real-time updates.

### QR Code Check-in Flow
1. Homeless individual presents QR code at check-in point.
2. Volunteer/staff scans code using the web or mobile app.
3. App captures location (GPS coordinates) and timestamp.
4. Data is sent directly to Supabase `check_ins` table via the Supabase client.
5. Supabase RLS policies ensure data integrity and access control.
6. Confirmation is displayed to the scanner.

### Community Reporting Flow
1. Community reporter authenticates via Supabase Auth in the app.
2. Reporter submits individual sighting with location and status details.
3. App captures GPS coordinates (with user permission).
4. Report is sent directly to Supabase `reports` table via the Supabase client.
5. Supabase RLS policies ensure data integrity and access control.
6. Report appears on the map visualization (potentially real-time via Supabase subscriptions).

---