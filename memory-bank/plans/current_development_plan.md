# Current Development Plan: Homeless Tracker App
**Date:** July 03, 2025
**Version:** 1.0

---

## Overview
This plan outlines the immediate next steps for developing the core features of the Homeless Tracker App, focusing on User Profile management for both web and mobile platforms. This plan is derived from `memory-bank/implementation-plan.md`.

## Current Status
- The project has successfully migrated to the new tech stack (Supabase, Next.js, Vercel, Expo).
- All initial setup and configuration are complete.
- The project is ready for feature development.

## Detailed Plan

### Phase 1: Core Feature Development - User Profiles

- [ ] **Task 1.1: Web - User Profile Management UI**
    - **Goal:** Build a web interface to create, view, edit, and delete individual profiles.
    - **Details:**
        - Create Next.js pages/components for profile listing and detail/form.
        - Implement forms for data input (first name, last name, nickname, DOB, status indicators).
        - Use Supabase client to interact with the `individuals` table via Next.js API routes.
        - Ensure responsive design.
    - **Test:**
        - Create a new profile via the web UI and verify it appears in the Supabase `individuals` table.
        - Edit an existing profile and confirm changes are reflected.
        - View profile details.

- [ ] **Task 1.2: Mobile - User Profile Management UI**
    - **Goal:** Build a mobile interface to create, view, edit, and delete individual profiles.
    - **Details:**
        - Create Expo/React Native screens/components for profile listing and detail/form.
        - Adapt web UI components for mobile-specific interactions.
        - Use Supabase client to interact with the `individuals` table.
    - **Test:**
        - Create a new profile via the mobile UI and verify it appears in the Supabase `individuals` table.
        - Edit an existing profile and confirm changes are reflected.
        - View profile details.

---

## Notes
- This plan will be updated as tasks are completed and new phases are initiated.
- Refer to `memory-bank/implementation-plan.md` for the full project roadmap.
