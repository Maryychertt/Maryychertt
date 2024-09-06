from flask import Flask, render_template_string

app = Flask(__name__)

@app.route('/')
def home():
    start = 1
    end = 10
    numbers = list(range(start, end + 1))
    return render_template_string('''
        <!doctype html>
        <html>
        <head><title>Counter</title></head>
        <body>
            <h1>Counting from {{ start }} to {{ end }}</h1>
            <ul>
                {% for number in numbers %}
                    <li>{{ number }}</li>
                {% endfor %}
            </ul>
        </body>
        </html>
    ''', start=start, end=end, numbers=numbers)

if __name__ == '__main__':
    app.run(debug=True)
