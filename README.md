# Spotify Wrapped Analysis

This project is a personal data analysis of my Spotify streaming habits over the past year. Using a combination of **Python (Pandas)**, **PostgreSQL (SQL)**, and **Tableau Public**, I explored trends in my listening history and built an interactive dashboard inspired by Spotify Wrapped.

## 🔄 Workflow Overview

### 1. Data Preprocessing (Python)
- Combined multiple monthly JSON files from Spotify’s streaming history into a single Pandas DataFrame
- Cleaned and formatted timestamps
- Renamed columns and dropped rows with missing or invalid data

### 2. Data Storage & Cleaning (PostgreSQL)
- Exported cleaned data from Python to PostgreSQL
- Used SQL to:
  - Remove low-duration tracks (e.g. < 10 seconds)
  - Filter out rows with null or blank artist and track names
  - Extract time-based features (month, year, weekday, hour)

### 3. Data Visualization (Tableau)
- Built an interactive dashboard in Tableau Public:
  - View top 10 songs for any month
  - See total listening time (in seconds, minutes, hours, days)
  - Explore unique artist counts and daily listening patterns

📊 **View the live dashboard:**  
[Spotify Wrapped Tableau Dashboard](https://public.tableau.com/views/spotify_wrapped/SpotifyWrapped)

---

<pre> ## 📁 Folder Structure ```plaintext spotify-wrapped-analysis/ │ ├── notebooks/ │ └── spotify_wrapped.ipynb # Jupyter Notebook: data prep & export ├── sql/ │ └── spotify_cleaning.sql # SQL cleaning & feature extraction ├── data/ │ └── sample_streaming_data.json # Sample data (sanitized) ├── images/ │ └── dashboard_screenshot.png # Optional: static preview of dashboard └── README.md ``` </pre>


---

## 🧰 Tools & Technologies

- **Python** (Pandas, Jupyter Notebook)
- **PostgreSQL** (via pgAdmin)
- **SQL** (data cleaning and transformation)
- **Tableau Public** (interactive dashboard)
- **Git/GitHub** (version control and sharing)

---

## 💡 Key Insights

- Discovered monthly trends in listening habits
- Identified top artists and songs by total listening time
- Built dynamic filters to explore how listening behavior changed throughout the year

---

## 📬 Contact

**Jack Naughton**  
📧 jacktnaughton@gmail.com  
🌐 [jacktnaughton.github.io/portfolio](https://jacktnaughton.github.io/portfolio)  
🔗 [LinkedIn](https://linkedin.com/in/john-t-naughton)

