# Aster House — Smart Hotel Demo

A static browser prototype for the Aster House guest booking and hotel operations flow.

## Run it locally

On Windows, double-click start-local.bat. It starts a local web server and opens the demo at http://127.0.0.1:4173.

Alternatively, open a terminal in this folder and run:

    py -m http.server 4173 --bind 127.0.0.1

Then open http://127.0.0.1:4173 in a browser. Camera access requires permission and a secure context such as localhost or HTTPS; opening index.html directly as a file URL may prevent the camera from working.

## Demo features

- Guest booking flow for stay dates, room selection, and guest details
- Optional face registration, live face detection and quality checks, then booking-linked face verification for check-in
- Guest portal for room information, simulated room controls, and service requests
- Manager portal for guest requests and checkout review
- Checkout request with a confirmation OTP, checkout reminder, late-checkout request, payment status, room inspection, and manager approval
- Three failed face checks lock the demo check-in flow and flag reception in the manager portal

## Project layout

- index.html — app markup, styling, and browser-side logic
- dist/human.js — locally served face-processing library
- dist/models/ — face detection, mesh, and descriptor model files required by the camera flow
- dist/LICENSE and SMART-HOTEL-FACE-MODEL-NOTICE.txt — third-party license and model attribution information
- start-local.bat — Windows local-server launcher

The room photo is loaded from Unsplash, so that image needs an internet connection. The face-processing library and model files are included locally.

## Prototype and data notes

This is a college/demo prototype, not a production hotel system. It has no backend or database. Booking details, face descriptors, and demo workflow state are stored in the browser's localStorage on that device and browser profile; the data does not sync to other devices. Browser storage is not encrypted, so use fictional demo data only.

The face flow is opt-in. The app says it keeps a numeric face template rather than the captured selfie/video and does not upload camera frames. The demo does not connect to a physical lock or hotel IoT hardware; room access and controls are simulated. Browser notification and reminder behavior depends on the browser and whether the demo is open.

For a real deployment, replace local browser storage with a secured backend, add authentication and access controls, and complete privacy, security, and biometric-data review before using real guest data.
