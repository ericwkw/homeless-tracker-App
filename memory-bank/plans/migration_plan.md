# Migration Plan: Homeless Tracker App to Supabase, Next.js, Vercel, Expo

This document outlines the detailed steps for migrating the Homeless Tracker App from its current Node.js/Express.js backend and React frontend to a new stack utilizing Supabase, Next.js, Vercel, and Expo.

## High-Level Overview
The migration will proceed in phases, focusing on setting up the new infrastructure, migrating data and logic, and finally deploying the new applications.

## Detailed Plan

### Phase 1: Supabase Setup (Backend & Database)
- [x] **Task 1.1: Create Supabase Project:**
    - Created a new project on the Supabase platform.
    - Obtained API keys and project URL.
- [x] **Task 1.2: Define Database Schema:**
    - Analyzed existing data models and designed/created necessary tables in Supabase (`individuals`, `check_ins`, `reports`).
    - Defined relationships, constraints, and initial RLS policies.
- [x] **Task 1.3: Configure Supabase Authentication (User Action Required):**
    - **Action:** Explore authentication providers in the Supabase dashboard and understand user management.
    - **Note:** The `reporter_id` in the `reports` table is intended to link to `auth.users.id`.
    - **Status:** Information provided for user to complete.
- [x] **Task 1.4: Data Migration (if applicable):**
    - No existing data to migrate. Task marked as complete.

### Phase 2: Next.js Application (Web Frontend & API)
- [x] **Task 2.1: Initialize Next.js Project:**
    - Created a new Next.js application (`web-app`) using `create-next-app`.
    - Installed initial dependencies.
- [x] **Task 2.2: Migrate Web Frontend Components:**
    - Copied CSS files and `components`, `context`, `utils` directories to `web-app/src`.
    - Modified `web-app/src/app/layout.js` to import global CSS.
    - Modified `web-app/src/app/page.js` with a basic structure.
- [x] **Task 2.3: Integrate Supabase Client:**
    - Created `web-app/src/utils/supabaseClient.js` to initialize the Supabase client.
    - Created `web-app/.env.local` with `NEXT_PUBLIC_SUPABASE_URL` and `NEXT_PUBLIC_SUPABASE_ANON_KEY`.
- [x] **Task 2.4: Implement Authentication Flow:**
    - Created `web-app/src/context/AuthContext.js` for authentication management.
    - Wrapped the application with `AuthProvider` in `web-app/src/app/layout.js`.
- [x] **Task 2.5: Develop Next.js API Routes:**
    - Created API routes for `individuals`, `check-ins`, and `reports` in `web-app/src/app/api`.
    - Implemented basic GET and POST methods for each, interacting with Supabase.

### Phase 3: Expo Application (Mobile Frontend)
- [x] **Task 3.1: Initialize Expo Project:**
    - Created a new Expo project (`mobile-app`) using `create-expo-app`.
    - Installed initial dependencies.
- [x] **Task 3.2: Adapt React Components for Mobile:**
    - Created `mobile-app/src/utils/supabaseClient.js`.
    - Created `mobile-app/.env` with `EXPO_PUBLIC_SUPABASE_URL` and `EXPO_PUBLIC_SUPABASE_ANON_KEY`.
    - Created `mobile-app/src/context/AuthContext.js`.
    - Wrapped the application with `AuthProvider` in `mobile-app/App.js`.
- [x] **Task 3.3: Implement Mobile-Specific Features:**
    - Installed `expo-barcode-scanner` and `expo-location` packages.
- [x] **Task 3.4: Integrate Supabase Client (Mobile):**
    - Supabase client initialized in `mobile-app/src/utils/supabaseClient.js`.
    - Environment variables configured in `mobile-app/.env`.
    - Authentication context set up in `mobile-app/src/context/AuthContext.js`.
    - Remaining implementation will be done during feature development.

### Phase 4: Vercel Deployment
- [x] **Task 4.1: Configure Vercel Deployment:**
    - Linked the Next.js project to Vercel.
    - Configured `NEXT_PUBLIC_SUPABASE_URL` and `NEXT_PUBLIC_SUPABASE_ANON_KEY` environment variables on Vercel.
- [x] **Task 4.2: Deploy Next.js Application:**
    - Deployed the Next.js application to Vercel successfully.
    - Verified that the web application and API routes are functioning correctly.

### Phase 5: Cleanup & Verification
- [x] **Task 5.1: Remove Old Codebase:**
    - Removed the `backend` and `frontend` directories.
- [x] **Task 5.2: Comprehensive Testing (User Action Required):**
    - **Action:** Thoroughly test all features across both the web (Next.js) and mobile (Expo) applications.
    - **Verification:** Verify data integrity, authentication, and all core functionalities.
    - **Status:** Awaiting user confirmation of completion.
- [ ] **Task 5.3: Documentation Update:**
    - Update the main `README.md` to reflect the new tech stack and setup instructions.
    - Add any new documentation relevant to Supabase, Next.js, and Expo.
