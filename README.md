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
- Individual Reports: Detailed view of selected individual's profile, location, and status history.

## Tech Stack

### Backend
- **Node.js** with **Express.js**: For building the RESTful API.
- **PostgreSQL**: Database for storing profiles, check-in logs, and community reports.
- **bcrypt**: For password hashing.
- **cors**: Cross-Origin Resource Sharing.
- **dotenv**: For managing environment variables.
- **helmet**: For securing Express apps by setting various HTTP headers.
- **jsonwebtoken**: For implementing JWT-based authentication.
- **nodemon**: For automatic server restarts during development.

### Frontend
- **React**: JavaScript library for building user interfaces.
- **@react-google-maps/api**: For map integration.
- **axios**: Promise-based HTTP client for the browser and Node.js.
- **jsqr**: For QR code scanning functionality.
- **react-router-dom**: For declarative routing in React applications.

## Getting Started

### Prerequisites
- Node.js (LTS version recommended)
- npm (comes with Node.js)
- PostgreSQL database

### Installation

#### 1. Clone the repository
```bash
git clone https://github.com/ericwkw/homeless-tracker-App.git
cd homeless-tracker-App
```

#### 2. Backend Setup
```bash
cd backend
npm install
```
Create a `.env` file in the `backend` directory with your PostgreSQL connection string and other environment variables (e.g., `DATABASE_URL`, `JWT_SECRET`, `PORT`).

#### 3. Frontend Setup
```bash
cd ../frontend
npm install
```
Create a `.env` file in the `frontend` directory for any frontend-specific environment variables (e.g., `REACT_APP_GOOGLE_MAPS_API_KEY`, `REACT_APP_BACKEND_URL`).

### Running the Application

#### 1. Start the Backend Server
From the `backend` directory:
```bash
npm run dev
# or npm start for production
```
The backend server will typically run on `http://localhost:5000` (or your specified PORT).

#### 2. Start the Frontend Development Server
From the `frontend` directory:
```bash
npm start
```
The frontend application will open in your browser, usually at `http://localhost:3000`.

## Project Structure

- `backend/`: Contains the Node.js/Express.js server, API routes, controllers, models, and database configuration.
- `frontend/`: Contains the React application, including components, context, and utility functions.
- `memory-bank/`: Contains project documentation, requirements, and architectural notes.

## Contributing
Contributions are welcome! Please feel free to submit a pull request or open an issue.

## License
This project is licensed under the MIT License.
