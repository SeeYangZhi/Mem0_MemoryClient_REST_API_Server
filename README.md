# Mem0 MemoryClient REST API Server

A REST API server (written using FastAPI) for Mem0 MemoryClient. Users can perform all operations through REST endpoints. The API also includes OpenAPI documentation, accessible at `/docs` when the server is running.

## Features

- **Create memories:** Create memories based on messages for a user, agent, or run.
- **Retrieve memories:** Get all memories for a given user, agent, or run.
- **Search memories:** Search stored memories based on a query.
- **Update memories:** Update an existing memory.
- **Delete memories:** Delete a specific memory or all memories for a user, agent, or run.
- **Reset memories:** Reset all memories for a user, agent, or run.
- **OpenAPI Documentation:** Accessible via `/docs` endpoint.

## Running the server

### With Docker

1. Create a .env file in the current directory and set your environment variables. For example:

   ```
   MEM0_API_KEY=your-openai-api-key
   ```

2. Build Locally

   ```
   docker build -t mem0-api-server .
   ```

3. Run the Docker container:

   ```
   docker run -p 8000:8000 mem0-api-server
   ```

4. Access the API at http://localhost:8000.

# Reference

https://github.com/mem0ai/mem0/tree/main/server
