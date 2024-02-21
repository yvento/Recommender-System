from flask import Flask, request, jsonify, render_template
import pickle
import pandas as pd

app = Flask(__name__)

# Load your model and data
model = pickle.load(open('Recommendation Model.pkl', 'rb'))
ratings_data = pd.read_json('Data/ratings.json')
new_predicted_ratings = pd.read_csv('Predicted ratings.csv')

ratings_data['CustomerID'] = ratings_data['CustomerID'].astype(int)
new_predicted_ratings['CustomerID'] = new_predicted_ratings['CustomerID'].astype(int)


@app.route('/')
def home():
    return render_template('index.html')


@app.route('/recommend', methods=['POST'])
def recommend():
    data = request.get_json()
    user_id = int(data['user_id'])

    products_number = 10

    # filter for the requested user ID
    rated_products = ratings_data[ratings_data['CustomerID'] == user_id]['ProductID'].unique()
    user_recommendations = new_predicted_ratings[new_predicted_ratings['CustomerID'] == user_id]
    new_recommendations = user_recommendations[~user_recommendations['ProductID'].isin(rated_products)]
    top_recommendations = new_recommendations.sort_values(by='Predicted Rating', ascending=False).head(products_number)

    # Generate recommendations for the requested user
    output = list(zip(top_recommendations['ProductID'], round(top_recommendations['Predicted Rating'], 2)))

    return jsonify(output)

if __name__ == '__main__':
    app.run(debug=True)
