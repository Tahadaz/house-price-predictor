House Price Prediction Platform
This project is a Machine Learning-based House Price Prediction platform. Created as part of a course project at the Mohammadia School of Engineers, taught by Mr. Lamrani Youssef, this application allows users to input various property features and receive an estimated price for the property.

Project Overview
The platform is built with Flask for the backend API and utilizes scikit-learn for machine learning model deployment. The app is containerized with Docker and deployed on Google Cloud Platform (GCP) using Google Cloud Run.

Features
House Price Prediction: Based on property details such as area, number of bedrooms, bathrooms, and other amenities.
API Health Check: Verifies the status of the deployed API.
File Structure
app: Contains the main application files.
app.py: Main Flask application file.
MLR_model.pkl & scaler.pkl: Pre-trained model and scaler files.
templates: Contains HTML files for the user interface.
Dockerfile: Docker configuration file.
requirements.txt: Lists all dependencies for the project.
Getting Started
Step 1: Clone the Repository
bash
Copier le code
git clone https://github.com/your-username/house-price-predictor.git
cd house-price-predictor
Step 2: Install Dependencies
Install the required Python libraries:

bash
Copier le code
pip install -r requirements.txt
Step 3: Run the Application Locally
Run the Flask application locally:

bash
Copier le code
python app.py
Once the server starts, you can access the application at http://localhost:8080.

Usage
1. API Health Check
To verify that the API is running, open your browser and go to http://localhost:8080. If the API is operational, you will see a message indicating its health status.

2. Predict House Price
From the homepage (http://localhost:8080), click on the "Go to Prediction Page" button.
Enter the property details in the provided form (e.g., area in square feet, number of bedrooms, and amenities).
Submit the form to receive an estimated price for the property.
Deployment on Google Cloud Platform (GCP)
Step 1: Build Docker Image
Ensure you're in the project directory, then run the following command to build the Docker image:

bash
Copier le code
docker build -t gcr.io/[PROJECT_ID]/house-price-predictor .
Replace [PROJECT_ID] with your actual Google Cloud Project ID.

Step 2: Push Docker Image to Google Container Registry (GCR)
Push the Docker image to Google Container Registry:

bash
Copier le code
docker push gcr.io/[PROJECT_ID]/house-price-predictor
Step 3: Deploy to Google Cloud Run
Deploy the application to Google Cloud Run with:

bash
Copier le code
gcloud run deploy house-price-predictor \
    --image gcr.io/[PROJECT_ID]/house-price-predictor \
    --platform managed \
    --region us-central1 \
    --allow-unauthenticated
After deployment, you will receive a public URL to access the application.

Model and Inputs
Inputs
The model takes the following inputs:

Area: Property size in square feet.
Bedrooms: Number of bedrooms.
Bathrooms: Number of bathrooms.
Stories: Number of stories.
Amenities (binary choices for yes/no):
Main Road
Guest Room
Basement
Hot Water Heating
Air Conditioning
Preferred Area
Parking Spaces
Furnishing Status
Output
The model provides a price prediction formatted as currency. The estimated price has an approximate error margin of 20%.

Acknowledgments
Team Members: Dazine Taha, Adiouane Med Said, Wahidi Mouad
Libraries: Flask, scikit-learn, pandas, joblib
Special Thanks: To the open-source community for libraries and tools that made this project possible.
