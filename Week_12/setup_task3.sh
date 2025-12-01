#!/bin/bash
# Week 12 - Task 3: Setup Script
# This script creates the project folder structure for Task 3

echo "=========================================="
echo "Week 12 - Task 3: Project Setup"
echo "=========================================="
echo ""

# Create project folder structure
echo "Creating project folder structure..."
mkdir -p project_folder/templates
mkdir -p project_folder/uploads

# Copy files to project folder
echo "Copying app.py to project_folder/..."
cp app.py project_folder/

echo "Copying upload.html to project_folder/templates/..."
cp upload.html project_folder/templates/

# Create README files
echo "Creating README files..."

# README for uploads folder
cat > project_folder/uploads/README.txt << 'EOF'
# Week 12 - Task 3: Image Upload Folder
# ==========================================
#
# Please place a .jpeg image file in this folder named 'my_image.jpeg'
#
# You can:
# 1. Download an image from Google Images (search for any image you like)
# 2. Use any existing .jpeg image from your computer
# 3. Convert an existing image to .jpeg format
#
# The image will be used to test the Flask web application that:
# - Allows users to upload .jpeg images
# - Displays the uploaded image
# - Shows metadata/EXIF information from the image
#
# For testing purposes, you can use any .jpeg image.
# Example: landscape, portrait, animal, technology, etc.
EOF

# Main README for project folder
cat > project_folder/README.md << 'EOF'
# Week 12 - Task 3: Image Upload Web Application

This is a simple Flask web application that allows users to upload JPEG images and view their metadata.

## Project Structure

```
project_folder/
├── app.py              # Main Flask application
├── templates/
│   └── upload.html     # HTML template for file upload form
└── uploads/            # Folder where uploaded images are stored
    └── (place your .jpeg images here)
```

## Features

- Upload .jpeg/.jpg images via web interface
- Display uploaded images
- Extract and display image metadata (EXIF data, dimensions, etc.)
- Simple and clean user interface

## How to Run

1. Make sure you have Flask and Pillow installed:
   ```bash
   pip install flask Pillow
   ```

2. Navigate to the project folder:
   ```bash
   cd Week_12/project_folder
   ```

3. Run the application:
   ```bash
   python app.py
   ```

4. Open your web browser and go to:
   ```
   http://127.0.0.1:5000
   ```

5. Use the web interface to upload a .jpeg image

## Testing

To test the application, you'll need a .jpeg image file. You can:
- Download any image from the internet (Google Images, etc.)
- Use an existing photo from your computer
- Convert an existing image to .jpeg format

## Screenshot for Submission

After running the application and uploading an image:
1. Make sure the image is displayed correctly
2. Check that metadata is shown below the image
3. Take a screenshot of the entire browser window
4. Save it for submission on Moodle

## Notes

- Only .jpeg and .jpg files are accepted
- Uploaded files are saved in the `uploads/` folder
- The app runs in debug mode (for development only)
- Use CTRL+C to stop the Flask server

## Troubleshooting

**Error: No module named 'PIL'**
```bash
pip install Pillow
```

**Error: No module named 'flask'**
```bash
pip install flask
```

**Port 5000 already in use:**
- Stop any other Flask applications running
- Or change the port in app.py: `app.run(port=5001, debug=True)`
EOF

echo ""
echo "✓ Project folder structure created successfully!"
echo ""
echo "Next steps:"
echo "1. Add a .jpeg image to project_folder/uploads/"
echo "2. Run: cd project_folder && python app.py"
echo "3. Open: http://127.0.0.1:5000"
echo ""
echo "=========================================="
