## MedBot — Medical RAG Chatbot

Minimal Flask app that answers medical questions using Retrieval-Augmented Generation (RAG) over local PDFs, Pinecone vector search, and Google Gemini.

### Tech stack
- Python 3.13, Flask
- LangChain (retrieval chains, prompts)
- HuggingFace sentence-transformers (embeddings)
- Pinecone (vector DB)
- Google Gemini via `langchain-google-genai`

### Quick start
1) Install dependencies
```powershell
.\n+.\n+.
\venv\Scripts\python.exe -m pip install -r requirements.txt
```

2) Add secrets in `.env` (project root)
```ini
PINECONE_API_KEY=your_pinecone_key
GOOGLE_API_KEY=your_gemini_key
```

3) (Optional) Build the index from `data/Medical_book.pdf`
```powershell
.
.
.
\run_app.ps1 -Index
```

4) Run the app
```powershell
.
.
.
\run_app.ps1
```

Open `http://127.0.0.1:8080` in your browser.

### Project layout
- `store_index.py`: loads PDF, chunks text, creates Pinecone index
- `app.py`: Flask server, RAG pipeline, chat endpoint
- `src/helper.py`: IO, splitting, embeddings utilities
- `src/prompt.py`: system prompt
- `templates/chat.html`: simple chat UI
- `run_app.ps1`: helper script to index and run

### Notes
- Ensure your Pinecone index name matches `medical-chatbot` (or update both `store_index.py` and `app.py`).
- If you change the embedding model, update the index dimension accordingly.
\n
