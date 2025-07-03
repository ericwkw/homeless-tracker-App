# Implementation Plan
## Project Title: Homeless Tracker App
**Date:** July 03, 2025
**Version:** 2.0

---

## Overview
This implementation plan outlines the steps to build the core features of the Homeless Tracker App using the Supabase, Next.js, Vercel, and Expo stack. The project setup and initial configuration for this new stack are complete. The focus is now on developing the functional components for both web and mobile platforms.

---

## Current Status
The project has successfully migrated to the new tech stack.
- Supabase project is set up with initial database schema (`individuals`, `check_ins`, `reports`).
- Next.js web application (`web-app`) is initialized, configured with Supabase client, authentication context, and basic API routes. It is deployed on Vercel.
- Expo mobile application (`mobile-app`) is initialized, configured with Supabase client, authentication context, and necessary Expo modules.
- Old backend and frontend codebases have been removed.

---

## Phase 1: Core Feature Development - User Profiles

### Step 1.1: Web - User Profile Management UI
- **Task:** Build a web interface to create, view, edit, and delete individual profiles.
- **Details:**
    - Create Next.js pages/components for profile listing and detail/form.
    - Implement forms for data input (first name, last name, nickname, DOB, status indicators).
    - Use Supabase client to interact with the `individuals` table via Next.js API routes.
    - Ensure responsive design.
- **Test:**
    - Create a new profile via the web UI and verify it appears in the Supabase `individuals` table.
    - Edit an existing profile and confirm changes are reflected.
    - View profile details.
- **Duration:** 3-5 days

### Step 1.2: Mobile - User Profile Management UI
- **Task:** Build a mobile interface to create, view, edit, and delete individual profiles.
- **Details:**
    - Create Expo/React Native screens/components for profile listing and detail/form.
    - Adapt web UI components for mobile-specific interactions.
    - Use Supabase client to interact with the `individuals` table.
- **Test:**
    - Create a new profile via the mobile UI and verify it appears in the Supabase `individuals` table.
    - Edit an existing profile and confirm changes are reflected.
    - View profile details.
- **Duration:** 4-6 days

---

## Phase 2: Core Feature Development - Location Tracking & Reporting

### Step 2.1: Web - QR Code Check-In Interface
- **Task:** Implement QR code scanning functionality for check-ins on the web.
- **Details:**
    - Integrate `jsqr` for scanning QR codes using the webcam.
    - Send scanned `qr_code_id` and current location to Supabase `check_ins` table via Next.js API routes.
    - Display confirmation.
- **Test:** Scan a test QR code and verify a new entry in the `check_ins` table in Supabase.
- **Duration:** 3-4 days

### Step 2.2: Mobile - QR Code Check-In Interface
- **Task:** Implement QR code scanning functionality for check-ins on mobile.
- **Details:**
    - Utilize `expo-barcode-scanner` for camera access and QR scanning.
    - Capture device location using `expo-location`.
    - Send scanned `qr_code_id` and location to Supabase `check_ins` table.
    - Display confirmation.
- **Test:** Scan a test QR code using the mobile app and verify a new entry in the `check_ins` table in Supabase.
- **Duration:** 4-5 days

### Step 2.3: Web - Community Reporting UI
- **Task:** Build a web interface for submitting geotagged reports.
- **Details:**
    - Create a form for report details (individual ID, status update, notes).
    - Integrate a map component (e.g., Google Maps) for location selection.
    - Use Supabase client to interact with the `reports` table via Next.js API routes.
- **Test:** Submit a report via the web UI and verify it appears in the `reports` table in Supabase.
- **Duration:** 3-4 days

### Step 2.4: Mobile - Community Reporting UI
- **Task:** Build a mobile interface for submitting geotagged reports.
- **Details:**
    - Create Expo/React Native screens/components for report submission.
    - Capture device location using `expo-location`.
    - Use Supabase client to interact with the `reports` table.
- **Test:** Submit a report via the mobile UI and verify it appears in the `reports` table in Supabase.
- **Duration:** 4-5 days

---

## Phase 3: Data Visualization & Reporting

### Step 3.1: Web - Map Visualization
- **Task:** Display check-in and report locations on an interactive map.
- **Details:**
    - Integrate Google Maps API in Next.js.
    - Fetch data from Supabase `check_ins` and `reports` tables.
    - Plot markers and implement clustering for density.
    - Add filters for status and time range.
- **Test:** Verify all check-ins and reports appear correctly on the map. Test filters.
- **Duration:** 5-7 days

### Step 3.2: Mobile - Map Visualization
- **Task:** Display check-in and report locations on an interactive map for mobile.
- **Details:**
    - Integrate a map component suitable for Expo (e.g., `react-native-maps`).
    - Fetch data from Supabase `check_ins` and `reports` tables.
    - Plot markers and implement clustering.
- **Test:** Verify all check-ins and reports appear correctly on the mobile map.
- **Duration:** 5-7 days

### Step 3.3: Web - Summary Reports
- **Task:** Develop a web interface for summary reports (e.g., total individuals, breakdown by status).
- **Details:**
    - Query Supabase for aggregated data.
    - Display data using charts or tables.
- **Test:** Verify report data accuracy.
- **Duration:** 3-4 days

### Step 3.4: Web - Individual Reports
- **Task:** Develop a web interface for detailed individual reports.
- **Details:**
    - Display an individual's profile, last known location, and history of check-ins/reports.
- **Test:** Verify individual report data accuracy.
- **Duration:** 2-3 days

---

## Phase 4: Authentication & User Management Refinement

### Step 4.1: Web - User Authentication UI
- **Task:** Implement sign-up, sign-in, and sign-out UI for web.
- **Details:**
    - Use Supabase Auth for user management.
    - Protect routes based on authentication status.
- **Test:** Register a new user, log in, log out.
- **Duration:** 2-3 days

### Step 4.2: Mobile - User Authentication UI
- **Task:** Implement sign-up, sign-in, and sign-out UI for mobile.
- **Details:**
    - Use Supabase Auth for user management.
    - Protect screens based on authentication status.
- **Test:** Register a new user, log in, log out on mobile.
- **Duration:** 2-3 days

### Step 4.3: Supabase RLS Refinement
- **Task:** Refine Row Level Security (RLS) policies in Supabase for fine-grained access control.
- **Details:**
    - Implement policies based on user roles (admin, volunteer, community reporter).
    - Ensure data privacy and security.
- **Test:** Verify access control for different user roles.
- **Duration:** 3-5 days

---

## Phase 5: Deployment & Finalization

### Step 5.1: Mobile App Deployment
- **Task:** Prepare and deploy the Expo mobile application to app stores (iOS and Android).
- **Details:**
    - Configure app icons, splash screens, and build settings.
    - Generate app bundles.
    - Submit to Apple App Store and Google Play Store.
- **Test:** Install and run the app from the app stores.
- **Duration:** 5-7 days

### Step 5.2: Comprehensive Testing & Bug Fixing
- **Task:** Conduct end-to-end testing across all platforms and fix any remaining bugs.
- **Details:**
    - User Acceptance Testing (UAT) with stakeholders.
    - Performance testing.
- **Test:** All features function correctly and meet requirements.
- **Duration:** 5-7 days

### Step 5.3: Documentation & Handover
- **Task:** Finalize all project documentation and prepare for handover.
- **Details:**
    - Update `README.md` (already done).
    - Update `architecture.md` (already done).
    - Update `tech-stack.md` (already done).
    - Create user manuals and deployment guides.
- **Test:** Documentation is clear, complete, and accurate.
- **Duration:** 2-3 days

---

## Timeline (Estimated)
- **Phase 1:** 7-11 days
- **Phase 2:** 14-18 days
- **Phase 3:** 15-21 days
- **Phase 4:** 7-11 days
- **Phase 5:** 12-17 days
- **Total Estimated Development Time:** ~55-78 days (approx. 11-16 weeks)

---

## Notes
- This plan is iterative; tasks may be adjusted based on progress and feedback.
- Focus on delivering a Minimum Viable Product (MVP) first, then iterate with additional features.
- Regular communication and feedback loops with stakeholders are crucial.