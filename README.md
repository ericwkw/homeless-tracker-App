# Homeless Tracker App

## Project Overview
The Homeless Tracker App is designed to assist in monitoring and managing homeless individuals within a specific area using a consent-driven hybrid approach of QR code check-ins and community reporting. The app aims to provide a comprehensive view of homeless communities, enabling users to assess societal trends and individual needs to offer targeted assistance effectively.

### Goals
- Provide a clear, broad overview of homeless populations in a designated area.
- Enable zooming out to analyze societal implications and zooming in to assess individual circumstances.
- Facilitate tracking and support for homeless individuals awaiting hospitalization or shelter placement without invasive technology.

## Features

### User Profiles
- Data Collection: Profile photo (optional), personal data (name, DOB), status indicators (hospitalization, shelter, employment, temporary shelter).
- Profile Management: Add, edit, remove profiles; secure data storage.

### Location Tracking
- QR Code Check-In System: Unique QR codes, scanners at key locations, timestamped location data.
- Community Reporting: Geotagged reports of sightings/interactions by authorized users.
- Tracking Features: Display last known locations on a map, infer movement trends.

### Area Analysis
- Aggregation Tools: Count individuals in user-defined areas, filter by status.
- Visualization: Map-based interface with zoom, markers/heatmaps for density/status.

### Reporting
- Summary Reports: Total individuals, breakdown by status, movement trends.
- Individual Reports: Detailed view of a selected individual's profile, last known location, and status history.

## Tech Stack

### Backend & Database
- **Supabase**: Provides a managed PostgreSQL database, authentication, and real-time capabilities.

### Web Frontend & API
- **Next.js**: React framework for building the web application and API routes.
- **Vercel**: Platform for seamless deployment of the Next.js application.

### Mobile Frontend
- **Expo**: Framework for building cross-platform mobile applications (iOS and Android) with React Native.

## Getting Started

### Prerequisites
- Node.js (LTS version recommended)
- npm (comes with Node.js)
- Git
- A Supabase project (with your project URL and `anon` public key)

### Installation

#### 1. Clone the repository
```bash
git clone https://github.com/ericwkw/homeless-tracker-App.git
cd homeless-tracker-App
```

#### 2. Web Application Setup (Next.js)
```bash
cd web-app
npm install
```
Create a `.env.local` file in the `web-app` directory with your Supabase credentials:
```
NEXT_PUBLIC_SUPABASE_URL=YOUR_SUPABASE_PROJECT_URL
NEXT_PUBLIC_SUPABASE_ANON_KEY=YOUR_SUPABASE_ANON_KEY
```

#### 3. Mobile Application Setup (Expo)
```bash
cd ../mobile-app
npm install
```
Create a `.env` file in the `mobile-app` directory with your Supabase credentials:
```
EXPO_PUBLIC_SUPABASE_URL=YOUR_SUPABASE_PROJECT_URL
EXPO_PUBLIC_SUPABASE_ANON_KEY=YOUR_SUPABASE_ANON_KEY
```

### Running the Applications

#### 1. Run the Web Application (Next.js)
From the `web-app` directory:
```bash
npm run dev
```
The web application will typically run on `http://localhost:3000`.

#### 2. Run the Mobile Application (Expo)
From the `mobile-app` directory:
```bash
npm start
```
This will start the Expo development server. You can then use the Expo Go app on your mobile device or an emulator to scan the QR code and open the app.

## Project Structure

- `web-app/`: Contains the Next.js web application, including API routes, components, and pages.
- `mobile-app/`: Contains the Expo mobile application, including components and mobile-specific features.
- `memory-bank/`: Contains project documentation, requirements, architectural notes, and SQL schema files.

## Contributing
Contributions are welcome! Please feel free to submit a pull request or open an issue.

## License
This project is licensed under the MIT License.