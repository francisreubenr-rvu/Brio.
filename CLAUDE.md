# Project Instructions

## Tech Stack
- **Backend**: Node.js, Express 5.x
- **Frontend**: Vanilla JS, CSS (Neobrutalist style)
- **Database**: MySQL (`mysql2/promise`)
- **Authentication**: JWT, bcrypt
- **Validation**: Zod 4.x

## Code Style
- **JavaScript**: Use `const` and `let` (ES6+), async/await for asynchronous operations.
- **Naming**: camelCase for JS variables/functions, PascalCase for classes/components (if any), snake_case for DB columns.
- **Formatting**: Vanilla JS/CSS without major build steps in the frontend.

## Testing
- **Command**: No automated tests currently implemented (`npm test` returns error).
- **Manual Verification**: Run server and verify via browser at `http://localhost:3000`.

## Build & Run
- **Dev Server**: `npm run dev` in `website/` directory (uses nodemon).
- **Production Server**: `npm start` in `website/` directory.
- **Database Setup**: Execute scripts in `sql/` in order (01-04).
- **Data Ingestion**: `npm run ingest:pdfs` in root directory.

## Project Structure
- `sql/`: Schema (`01_DDL.sql`), Seed (`02_DML.sql`), Queries (`03_QUERIES.sql`), Views/Triggers (`04_VIEWS_TRIGGERS_TRANSACTIONS.sql`).
- `website/`: Express server (`server.js`) and static frontend (`public/`).
- `report/`: Project documentation (LaTeX/PDF).
- `tools/`: Utility scripts (e.g., `ingest-pdfs.js`).

## Conventions
- **API Response**: Standard JSON responses with `{ error: "message" }` on failure.
- **Authentication**: Use `authenticate` middleware in `server.js` for protected routes.
- **SQL Sandbox**: Only `SELECT` queries are allowed in the chaos-sandbox endpoint.
