# Personalized E-commerce Recommender System

This project implements a sophisticated machine learning-based recommender system that personalizes product suggestions using Singular Value Decomposition (SVD). Developed in Python and integrated with a Flask web application, it aims to enhance user experience on e-commerce platforms by tailoring recommendations to individual user preferences.

## Features

- **Personalized Recommendations**: Leverages user-item interaction data to generate tailored product suggestions.
- **SVD Algorithm**: Utilizes SVD for accurate prediction of user preferences.
- **Flask Application**: Includes a Flask web application for easy demonstration and deployment.
- **Scalability**: Designed to efficiently handle large datasets and user bases.

### Prerequisites

Things you need to install

```bash
python >= 3.6
Flask
pandas
matplotlib
scikit-learn
suprise
```
## Usage
This recommender system can be integrated into e-commerce platforms or content providers to enhance user experience with personalized suggestions. The Flask application serves as a demonstration of how the system can be deployed and interacted with in a real-world scenario.

## How to run
To run the recommender system and the Flask web application, follow these steps:

1. **Run the Jupyter Notebook:** Open the Recommendation System.ipynb notebook and run all the cells to initialize the recommender system.
2. **Launch the Flask Application:** Run App.py and this will start the web server and print a URL to the console, typically http://127.0.0.1:5000/.
3. **Interact with the Web Application:**
- Open a web browser and go to the URL provided by the Flask application.
- Enter the user ID of the customer for whom you want to generate recommendations in the provided input field.
- Click on the "Get Recommendations" button to view the personalized product suggestions.

## Future Work

- **Model Improvement:** Explore more advanced recommendation algorithms and feature engineering techniques to enhance recommendation accuracy.
- **User Interface Enhancements:** Develop a more interactive and user-friendly web interface for the Flask application.
- **Scalability:** Implement optimizations for handling larger datasets and user bases without compromising performance.

## Authors
Yves Mfitumukiza Ndayisaba - Initial work - [yvento](https://github.com/yvento)


