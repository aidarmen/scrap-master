# Scrape_Master 🕷️📊

**Scrape_Master** is a containerized web scraping and data presentation app built with **Streamlit** and **Playwright**.
![Web Scraper](Web Scraper.png)  

## 🚀 Features

- Streamlit UI for interaction
- Playwright-powered browser automation and scraping
- Dockerized for easy deployment
- Clean and modern Python stack

## 🧱 Project Structure

```
Scrape_Master/
├── streamlit_app.py        # Entry point for Streamlit
├── requirements.txt        # Python dependencies
├── Dockerfile              # Container setup
├── .gitignore              # Git exclusions
└── other_modules.py        # Your additional logic
```

## 🐳 Running with Docker

```bash
docker build -t scrape_master .
docker run -p 8502:8502 scrape_master
```

Access it at: [http://localhost:8502](http://localhost:8502)

## 📦 Requirements

Add your Python packages to `requirements.txt`. Example:

```
streamlit
playwright
```

## 🤖 Playwright Setup

If you use a custom base image:

```bash
python -m playwright install --with-deps
```

If you use the official Playwright image (recommended), this is already done.

## 💻 Local Development

```bash
pip install -r requirements.txt
streamlit run streamlit_app.py
```
