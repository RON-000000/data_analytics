# Week 12 - Exercises Completion Guide

This guide explains the status of Week 12 exercises and what needs to be completed manually.

## Overview

Week 12 covers:
- Running and sharing Jupyter notebooks on Google Colab
- Using Python Flask to run web applications
- Using Plotly and Dash for interactive web applications
- Creating your own simple web app with Python and Flask

---

## Task 1: Google Colab (MANUAL - User Action Required)

**Status:** ⚠️ Requires manual completion by user

**What needs to be done:**

a) Create or use an existing Google account
b) Navigate to https://colab.research.google.com
c) Change language to English if needed
d) Upload the Jupyter notebook from Week 09 (titanic example)
e) Upload the files 'titanic.csv' and 'img.jpg' from Week 09
f) Run the notebook on Google Colab (Runtime -> Run all)
g) Create a Shared-Link and save it

**To be submitted on Moodle:**
- The Shared-Link (URL) to your 'titanic' Jupyter notebook on Google Colab

**Note:** This task requires a Google account and browser interaction, which cannot be automated.

---

## Task 2: Flask and Dash Web Applications (MANUAL - Screenshots Required)

**Status:** ✅ Applications ready to run | ⚠️ Screenshots need to be created manually

**What's available:**
All web applications are ready to run in the following folders:
1. `flask_simple_application/`
2. `flask_matplotlib_application/`
3. `flask_iris_model_application/`
4. `plotly_dash_application/`

**How to test the applications:**

### 1. Flask Simple Application
```bash
cd Week_12/flask_simple_application
python app.py
# Open: http://127.0.0.1:5000
# Try: http://127.0.0.1:5000/hello/YourName
```

### 2. Flask Matplotlib Application
```bash
cd Week_12/flask_matplotlib_application
python app.py
# Open: http://127.0.0.1:5000/500
# Try different parameters: /10, /100, /1000, /10000
```

### 3. Flask Iris Model Application
```bash
cd Week_12/flask_iris_model_application
python model.py  # First, create the ML model
python app.py    # Then run the app
# Open: http://localhost:8080
# Enter values: 5, 4, 2, 1 (sepal length, sepal width, petal length, petal width)
```

### 4. Plotly Dash Application
```bash
cd Week_12/plotly_dash_application
python app_01.py
# Open: http://127.0.0.1:8050
```

**To be submitted on Moodle:**
- Screenshot: `flask_simple_application.png`
- Screenshot: `flask_matplotlib_example.png`
- Screenshot: `flask_iris_model_example.png`
- Screenshot: `flask_dash_example.png`

**Note:** Use CTRL+C in terminal to stop each web service before starting the next one.

---

## Task 3: Create Your Own Web Application

**Status:** ✅ Project structure created | ⚠️ Image and testing required

**What's been set up:**
```
Week_12/project_folder/
├── app.py                      # ✅ Flask application (ready)
├── templates/
│   └── upload.html             # ✅ Upload form template (ready)
└── uploads/
    ├── README.txt              # ✅ Instructions for image
    └── my_image.jpeg           # ⚠️ USER MUST ADD THIS
```

**What you need to do:**

1. **Add a .jpeg image:**
   - Find or download a .jpeg image (e.g., from Google Images)
   - Save it as `my_image.jpeg` in the `project_folder/uploads/` folder

2. **Run the web application:**
```bash
cd Week_12/project_folder
python app.py
# Open: http://127.0.0.1:5000
```

3. **Test the upload functionality:**
   - Click "Choose File" and select your image
   - Click "Upload"
   - The app will display the image and its metadata

4. **Create a screenshot:**
   - Take a screenshot showing the uploaded image and metadata

**To be submitted on Moodle:**
- Screenshot of your app with uploaded image and metadata

---

## Summary Checklist

### Automated Setup ✅
- [x] Task 2: All Flask and Dash applications are ready
- [x] Task 3: Project folder structure created
- [x] Task 3: app.py and upload.html files in place

### Manual Tasks Required ⚠️
- [ ] Task 1: Complete Google Colab exercise and get shared link
- [ ] Task 2: Run 4 web applications and create 4 screenshots
- [ ] Task 3: Add a .jpeg image to project_folder/uploads/
- [ ] Task 3: Run the web app and create screenshot

### Moodle Submissions
1. Task 1: Google Colab shared link (URL)
2. Task 2: 4 screenshots (.png files)
3. Task 3: 1 screenshot (.png file)

**Total to submit:** 1 URL + 5 PNG files

---

## Troubleshooting

### If Flask doesn't start:
```bash
# Install Flask if needed
pip install flask

# For iris model app, also install:
pip install scikit-learn pandas numpy
```

### If PIL/Pillow errors occur in Task 3:
```bash
pip install Pillow
```

### If port is already in use:
- Stop the previous Flask app with CTRL+C
- Or kill the process: `pkill -f flask`

---

## Notes

- All applications use localhost (127.0.0.1)
- Default Flask port is 5000 (except iris model which uses 8080)
- Dash applications use port 8050
- Screenshots should show the full browser window with the application running
- For HTML export: You mentioned you'll handle this yourself

---

Good luck with completing Week 12 exercises! 🚀
