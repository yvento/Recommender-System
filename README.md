# Personalized E-commerce Recommender System

This is a machine learning-based recommender system that I built to give personalized product suggestions using **Singular Value Decomposition (SVD)**.  
It’s developed in Python, trained in a Jupyter Notebook, and then deployed with Flask so it can run as a web app. The goal was to make it feel like a real recommender you’d see on an e-commerce platform, and not just a notebook project.

🔗 **Live Demo:** [Recommender System on Render](https://recommender-system-1-p6t4.onrender.com)  
(You can test it by entering a sample customer ID like `103611`)

---

## Features
- Personalized recommendations based on user–item interaction data.  
- SVD algorithm from the Surprise library for rating prediction.  
- Flask application so you can interact with it through a web page.  
- Deployment setup (Procfile, Dockerfile) so it can run on Render or other platforms.  
- UI updated to be clean and simple so anyone testing it can quickly see results.

---

## Model Results
I trained and evaluated the recommender with cross-validation (3 folds). The main metrics are RMSE and MAE.

| Metric | Mean | Std |
|--------|------|-----|
| RMSE   | 1.1920 | 0.0024 |
| MAE    | 0.8406 | 0.0018 |

This basically means the model predicts within about **0.8 stars on average**, which is pretty good for a 1–5 rating scale.

## Project Structure

```
.
├── Data/                         # Dataset files
├── templates/                    # HTML templates for Flask
├── app.py                        # Flask application
├── Recommendation system.ipynb   # Notebook used for training and experiments
├── Recommendation Model.pkl      # Trained SVD model
├── Predicted ratings.csv         # Predictions generated for recommendations
├── requirements.txt              # Dependencies
├── pyproject.toml                 # Project metadata
├── runtime.txt                   # Runtime environment (Python version)
├── Procfile                      # For deployment on Render/Heroku
├── Dockerfile                    # Containerization setup
└── README.md
```

## How to Run It

If you want to try running it locally:

**1. Clone the repo**
```bash
git clone https://github.com/yvento/Recommender-System.git
cd Recommender-System
```

**2. Install requirements**
```bash
pip install -r requirements.txt
```

**3. Launch the Flask app**
```bash
python app.py
```

Now open [http://127.0.0.1:5000](http://127.0.0.1:5000) in your browser.

Enter a customer ID and you’ll get personalized recommendations.


## **Deployment**

For deployment, I added both a Procfile and a Dockerfile:

Procfile → for Render/Heroku style deployment.

Dockerfile → so the app can be containerized and run anywhere with Docker.

I deployed it on Render, which means you can test it directly [here](https://recommender-system-1-p6t4.onrender.com/).

## **Future Work**

- Try out more advanced recommendation methods (e.g., deep learning-based recommenders).

- Improve the UI further with product images, categories, etc.

- Optimize for larger datasets and users.

## **Author**

**Yves Mfitumukiza Ndayisaba**
[yventobusiness24@gmail.com](mailto:yventobusiness24@gmail.com)

[LinkedIn](https://www.linkedin.com/in/yves-mfitumukiza-ndayisaba/)
