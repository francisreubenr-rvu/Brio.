-- ==============================================================
-- CS1211 DATABASE MANAGEMENT SYSTEM
-- Brio — Project-Driven Programming Learning Platform
-- File: 02_DML.sql  |  Data Manipulation Language (INSERT)
-- ==============================================================

USE brio_db;

-- -------------------------
-- Insert Users (10)
-- -------------------------
INSERT INTO users (f_name, l_name, email, password_hash, bio, avatar_url, github_url, role, sub_tier) VALUES
('James',    'Wilson',    'james.wilson@devpath.io',    '$2b$10$X.FQ6auI38JrO572/ekgGe3dXo5DX9F.GzpuSdMqib113/f1CVPZG', 'Enthusiastic full-stack learner.', 'https://api.dicebear.com/7.x/avataaars/svg?seed=James', 'https://github.com/james-wilson', 'learner',  'pro'),
('Emma',    'Thomas',     'emma.thomas@devpath.io',     '$2b$10$X.FQ6auI38JrO572/ekgGe3dXo5DX9F.GzpuSdMqib113/f1CVPZG', 'Data science aficionado.', 'https://api.dicebear.com/7.x/avataaars/svg?seed=Emma', 'https://github.com/emmathomas', 'learner',  'team'),
('Daniel',    'Taylor',    'daniel.taylor@devpath.io',    '$2b$10$X.FQ6auI38JrO572/ekgGe3dXo5DX9F.GzpuSdMqib113/f1CVPZG', 'Starting my coding journey.', 'https://api.dicebear.com/7.x/avataaars/svg?seed=Daniel', 'https://github.com/danielt', 'learner',  'starter'),
('Sarah',    'Moore',     'sarah.moore@devpath.io',     '$2b$10$X.FQ6auI38JrO572/ekgGe3dXo5DX9F.GzpuSdMqib113/f1CVPZG', 'Mobile app developer in training.', 'https://api.dicebear.com/7.x/avataaars/svg?seed=Sarah', 'https://github.com/sarahmoore', 'learner',  'team'),
('Matthew',    'Anderson',    'matthew.anderson@devpath.io',    '$2b$10$X.FQ6auI38JrO572/ekgGe3dXo5DX9F.GzpuSdMqib113/f1CVPZG', 'Frontend master.', 'https://api.dicebear.com/7.x/avataaars/svg?seed=Matthew', 'https://github.com/matthewanderson', 'learner',  'pro'),
('Olivia',   'White',   'olivia.white@devpath.io',  '$2b$10$X.FQ6auI38JrO572/ekgGe3dXo5DX9F.GzpuSdMqib113/f1CVPZG', 'Backend architecture focused.', 'https://api.dicebear.com/7.x/avataaars/svg?seed=Olivia', 'https://github.com/oliviaw', 'learner',  'team'),
('Michael',  'Smith',     'michael.smith@devpath.io',   '$2b$10$X.FQ6auI38JrO572/ekgGe3dXo5DX9F.GzpuSdMqib113/f1CVPZG', 'Team lead and full-stack dev.', 'https://api.dicebear.com/7.x/avataaars/svg?seed=Michael', 'https://github.com/michaelsmith', 'learner',  'team'),
('Francis',  'Reuben',   'francis.reuben@devpath.io', '$2b$10$X.FQ6auI38JrO572/ekgGe3dXo5DX9F.GzpuSdMqib113/f1CVPZG', 'Building scalable backends.', 'https://api.dicebear.com/7.x/avataaars/svg?seed=Francis', 'https://github.com/francisreubenr-rvu', 'learner',  'team'),
('David', 'Miller',       'david.miller@devpath.io',    '$2b$10$X.FQ6auI38JrO572/ekgGe3dXo5DX9F.GzpuSdMqib113/f1CVPZG', 'UI/UX and Frontend specialist.', 'https://api.dicebear.com/7.x/avataaars/svg?seed=David', 'https://github.com/davidmiller', 'learner',  'team'),
('Jessica',   'Martin',      'jessica.martin@devpath.io',     '$2b$10$X.FQ6auI38JrO572/ekgGe3dXo5DX9F.GzpuSdMqib113/f1CVPZG', 'Senior Mentor. 10 YOE.', 'https://api.dicebear.com/7.x/avataaars/svg?seed=Jessica', 'https://github.com/jessicamartin', 'mentor',   'pro');

-- -------------------------
-- Insert Courses (5)
-- -------------------------
INSERT INTO course (title, tech_stack, difficulty) VALUES
('Full-Stack Web Development',        'React, Node.js, Express, PostgreSQL', 'intermediate'),
('Python for Data Science',           'Python, Pandas, NumPy, Matplotlib',   'beginner'),
('Mobile App Development with React Native', 'React Native, Expo, Supabase', 'intermediate'),
('DevOps & Cloud Foundations',        'Docker, GitHub Actions, AWS, Linux',  'intermediate'),
('Frontend Engineering Masterclass',  'HTML, CSS, JavaScript, Tailwind, Vite', 'beginner');

-- -------------------------
-- Insert Lessons (12)
-- -------------------------
-- Course 1: Full-Stack
INSERT INTO lesson (course_id, title, content, lesson_no) VALUES
(1, 'REST API Design Fundamentals', '## In-Depth Guide: REST API Design Fundamentals\n\n### Introduction to REST\nRepresentational State Transfer (REST) is a software architectural style that was created to guide the design and development of the architecture for the World Wide Web. REST defines a set of constraints for how the architecture of an Internet-scale distributed hypermedia system, such as the Web, should behave.\n\n### Core Principles\n1. **Client-Server Architecture**: The client and server act independently. The client is responsible for the user interface and user state, while the server is responsible for data storage and access.\n2. **Statelessness**: Every request from client to server must contain all the information needed to understand and process the request. The server cannot take advantage of any stored context on the server.\n3. **Cacheability**: Responses must define themselves as cacheable or non-cacheable to prevent clients from reusing stale or inappropriate data.\n4. **Layered System**: The client cannot ordinarily tell whether it is connected directly to the end server or to an intermediary along the way.\n5. **Uniform Interface**: This is fundamental to REST. It simplifies and decouples the architecture, which enables each part to evolve independently.\n\n### HTTP Verbs and Their Idempotency\n- **GET**: Retrieve a resource. Idempotent.\n- **POST**: Create a new resource. Not idempotent.\n- **PUT**: Update an existing resource. Idempotent.\n- **PATCH**: Partially update an existing resource. Not typically idempotent.\n- **DELETE**: Remove a resource. Idempotent.\n\n### Best Practices for Resource Naming\n- Use nouns, not verbs. (e.g., `/users` instead of `/getUsers`)\n- Use plural nouns. (e.g., `/users/123` instead of `/user/123`)\n- Nest resources logically. (e.g., `/users/123/orders`)\n\n### Status Codes\n- **200 OK**: General success.\n- **201 Created**: Resource created successfully.\n- **400 Bad Request**: Client sent invalid data.\n- **401 Unauthorized**: Authentication required.\n- **403 Forbidden**: Authenticated, but lacking permissions.\n- **404 Not Found**: Resource doesn\'t exist.\n- **500 Internal Server Error**: Server crashed.\n\nTake the time to master these fundamentals. A well-designed API is a joy for other developers to consume.', 1),
(1, 'PostgreSQL Schema Design', '## Deep Dive: PostgreSQL Schema Design\n\n### The Relational Model\nPostgreSQL is a powerful, open-source object-relational database system. Designing a robust schema is the most critical step in building a scalable application. A poor schema will haunt your application with performance bottlenecks and data anomalies forever.\n\n### Normalization Forms\nNormalization is the process of structuring a database to reduce data redundancy and improve data integrity.\n- **1NF (First Normal Form)**: Each table has a primary key, and every column contains atomic (indivisible) values. No repeating groups.\n- **2NF (Second Normal Form)**: 1NF + all non-key attributes are fully functionally dependent on the primary key.\n- **3NF (Third Normal Form)**: 2NF + all non-key attributes are functionally independent of each other (no transitive dependencies).\n- **BCNF (Boyce-Codd Normal Form)**: A slightly stronger version of 3NF. Every determinant must be a candidate key.\n\n### Choosing Primary Keys\nThere\'s an endless debate between Auto-Incrementing Integers (SERIAL/BIGSERIAL) and UUIDs.\n- **Integers**: Faster to index, smaller storage footprint (4-8 bytes), naturally ordered (improves page caching).\n- **UUIDs**: 16 bytes, not naturally ordered (unless using UUIDv7), universally unique (great for distributed systems or hiding table sizes).\n**Rule of thumb**: Use integers for internal relationships. If you need to expose IDs in a public API, consider hashing them or using UUIDs.\n\n### Indexing Strategies\nIndexes are critical for read performance but incur a write penalty.\n- **B-Tree**: Default index type. Excellent for equality (`=`) and range (`<`, `>`) queries.\n- **Hash**: Only for equality comparisons.\n- **GIN / GiST**: Crucial for full-text search and JSONB containment queries.\n\n### JSONB: The Best of Both Worlds\nPostgreSQL\'s `JSONB` column type allows you to store semi-structured data while still indexing it. It\'s incredibly powerful when you have attributes that vary wildly between rows and don\'t warrant their own normalized tables. However, do not use it as a crutch to avoid proper normalization.\n\nRemember: Measure twice, migrate once. Changing schemas in production on multi-terabyte tables requires careful lock management.', 2),
(1, 'React State Management with Hooks', '## Mastering React State Management with Hooks\n\n### The Evolution of State in React\nBefore Hooks (introduced in React 16.8), state management was confined to Class components using `this.state` and `this.setState`. Functional components were "dumb" or "stateless". Hooks revolutionized React by allowing functional components to "hook into" React state and lifecycle features.\n\n### 1. useState: The Foundation\n`useState` is the most commonly used hook. It declares a state variable that you can update directly.\n```javascript\nconst [count, setCount] = useState(0);\n```\n**Pro Tip**: If your new state depends on the previous state, always use the functional update form: `setCount(prev => prev + 1)` to avoid race conditions and stale closures.\n\n### 2. useEffect: Managing Side Effects\n`useEffect` handles side effects like data fetching, subscriptions, or manually changing the DOM.\n```javascript\nuseEffect(() => {\n  const data = fetchData();\n  return () => {\n    // Cleanup function (runs before component unmounts or before next effect)\n  };\n}, [dependencyArray]);\n```\n**The Dependency Array**:\n- Omitted: Runs after EVERY render.\n- `[]` (Empty): Runs ONCE after initial render (mount).\n- `[var1, var2]`: Runs when `var1` or `var2` changes.\n\n### 3. useContext: Avoiding Prop Drilling\nWhen you have global data (like themes, user auth, or localization) that many components need, passing it down via props ("prop drilling") becomes tedious. `useContext` provides a way to pass data through the component tree without passing props down manually at every level.\n\n### 4. useReducer: For Complex State\nIf your state logic is complex, involves multiple sub-values, or if the next state depends on the previous one in complicated ways, `useReducer` is preferable to `useState`. It uses a Redux-like reducer pattern.\n\n### 5. Custom Hooks: Sharing Stateful Logic\nCustom hooks are just JavaScript functions whose names start with "use" and that call other hooks. They let you extract component logic into reusable functions.', 3),
(1, 'Authentication with JWTs', '## Comprehensive Guide to Authentication with JWTs\n\n### What is a JSON Web Token (JWT)?\nA JSON Web Token (JWT) is an open standard (RFC 7519) that defines a compact and self-contained way for securely transmitting information between parties as a JSON object. This information can be verified and trusted because it is digitally signed. JWTs can be signed using a secret (with the HMAC algorithm) or a public/private key pair using RSA or ECDSA.\n\n### Structure of a JWT\nA JWT consists of three parts separated by dots (`.`):\n1. **Header**: Contains the type of token (JWT) and the signing algorithm being used (e.g., HMAC SHA256 or RSA).\n2. **Payload**: Contains the claims. Claims are statements about an entity (typically, the user) and additional data. E.g., `{ "userId": 123, "role": "admin" }`.\n3. **Signature**: To create the signature part you have to take the encoded header, the encoded payload, a secret, the algorithm specified in the header, and sign that.\n\n### Authentication Flow\n1. **Login**: The client sends credentials (email/password) to the server.\n2. **Verification**: The server verifies the credentials against the database (using bcrypt to check the hash).\n3. **Token Generation**: If valid, the server generates a JWT, embedding non-sensitive user info in the payload.\n4. **Transmission**: The server sends the JWT back to the client.\n5. **Storage**: The client stores the JWT. **Security Warning**: Do not store JWTs in `localStorage` or `sessionStorage` as they are vulnerable to XSS attacks. Store them in `HttpOnly`, `Secure`, `SameSite` cookies.\n6. **Subsequent Requests**: The client sends the JWT with every request (typically in the Authorization header as a Bearer token, or automatically if using cookies).\n7. **Validation**: The server verifies the token\'s signature using its secret key. If valid, the request proceeds.\n\n### Security Best Practices\n- **Short Expiration**: JWTs should have a short `exp` (expiration time) claim (e.g., 15 minutes).\n- **Refresh Tokens**: Use opaque refresh tokens stored securely in the database to get new JWTs when they expire. This allows you to revoke access by invalidating the refresh token.\n- **Never Store Secrets in the Payload**: The payload is merely Base64 encoded, not encrypted. Anyone can read it.\n- **Use Strong Secrets**: The signing key must be extremely secure and sufficiently long.\n\nImplementing secure authentication is difficult. When in doubt, leverage established libraries and patterns rather than rolling your own crypto.', 4),
-- Course 2: Python DS
(2, 'NumPy Array Operations',           'Master ndarray creation, indexing, broadcasting, and vectorized math operations.', 1),
(2, 'Pandas DataFrames in Depth',       'Load, clean, group, merge, and visualize real-world CSV datasets using Pandas.', 2),
(2, 'Data Visualization with Matplotlib', 'Plot line, bar, scatter, and heatmap charts with professional formatting.', 3),
-- Course 3: Mobile
(3, 'React Native Core Components',     'Build mobile UIs with View, Text, Image, FlatList, and StyleSheet.', 1),
(3, 'Supabase Auth in React Native',    'Integrate Supabase Auth SDK for email/password and OAuth flows in a mobile app.', 2),
-- Course 5: Frontend
(5, 'HTML Semantics & Accessibility',   'Structure documents with semantic HTML5, ARIA roles, and keyboard navigation.', 1),
(5, 'CSS Grid & Flexbox Layouts',       'Master two-dimensional layout with CSS Grid and one-dimensional flow with Flexbox.', 2),
(5, 'JavaScript DOM Manipulation',      'Select, modify, create, and delete DOM nodes; handle events and async fetch calls.', 3);

-- -------------------------
-- Insert Teams (3)
-- -------------------------
INSERT INTO team (team_name, max_members) VALUES
('Team Pixel',    4),
('Team Sigma',    4),
('Team Voyager',  3);

-- -------------------------
-- Insert Blueprints (5)
-- -------------------------
INSERT INTO blueprint (description, difficulty_est) VALUES
('AI-powered task manager with drag-and-drop Kanban board, real-time sync, and natural language task creation.', 'hard'),
('Personal finance dashboard tracking income, expenses, and budgets with chart visualizations.', 'medium'),
('Collaborative markdown notes app with live co-editing, tagging, and full-text search.', 'medium'),
('Developer portfolio site with project showcases, GitHub stats integration, and blog.', 'easy'),
('Real-time multiplayer quiz app with lobby, timer, leaderboard, and WebSocket backend.', 'hard');

-- -------------------------
-- Insert Projects (5)
-- -------------------------
-- user_id 1 owns projects 1 and 4 (solo)
-- user_id 7,8,9 team (Team Pixel) owns project 3
INSERT INTO project (user_id, team_id, blueprint_id, proj_name, status) VALUES
(1, NULL, 1, 'TaskFlow AI',            'active'),
(2, NULL, 2, 'BudgetLens',             'active'),
(7, 1,    3, 'CollaboNote',            'active'),
(5, NULL, 4, 'DevFolio',               'shipped'),
(4, 2,    5, 'QuizBlitz',              'planning');

-- -------------------------
-- Insert Team Members
-- -------------------------
-- Team Pixel (team_id=1): Michael, Francis, David
INSERT INTO team_member (user_id, team_id) VALUES
(7, 1), (8, 1), (9, 1);

-- Team Sigma (team_id=2): Sarah, Olivia
INSERT INTO team_member (user_id, team_id) VALUES
(4, 2), (6, 2);

-- Team Voyager (team_id=3): James, Emma, Daniel
INSERT INTO team_member (user_id, team_id) VALUES
(1, 3), (2, 3), (3, 3);

-- -------------------------
-- Insert Team Roles
-- -------------------------
INSERT INTO team_role (team_id, user_id, role) VALUES
(1, 7, 'lead'),
(1, 8, 'backend'),
(1, 9, 'frontend'),
(2, 4, 'lead'),
(2, 6, 'frontend');

-- -------------------------
-- Insert Kanban Tasks
-- -------------------------
-- Project 1: TaskFlow AI
INSERT INTO kanban_task (project_id, task_name, lesson_id, status, skill_req, priority) VALUES
(1, 'Design REST API endpoints',      1, 'done',        'REST API knowledge',       'high'),
(1, 'Build PostgreSQL schema',         2, 'done',        'Schema design',            'high'),
(1, 'Implement React UI components',   3, 'in_progress', 'React Hooks',              'high'),
(1, 'Add JWT authentication',          4, 'locked',      'Auth & security',          'medium'),
(1, 'Deploy to Vercel + Supabase',     NULL, 'locked',   'Deployment know-how',      'low');

-- Project 3: CollaboNote
INSERT INTO kanban_task (project_id, task_name, lesson_id, status, skill_req, priority) VALUES
(3, 'Set up React Native project',     8, 'done',        'React Native basics',      'high'),
(3, 'Integrate Supabase Auth',         9, 'in_progress', 'Auth SDK',                 'high'),
(3, 'Build Markdown editor component', 3, 'locked',      'React component design',   'medium'),
(3, 'Real-time sync with subscriptions', NULL, 'locked', 'WebSocket/Supabase realtime', 'high');

-- Project 4: DevFolio
INSERT INTO kanban_task (project_id, task_name, lesson_id, status, skill_req, priority) VALUES
(4, 'Create semantic HTML structure',  10, 'done',       'HTML5 semantics',          'high'),
(4, 'Style with Tailwind CSS',         11, 'done',       'CSS Grid & Flexbox',       'high'),
(4, 'Add JavaScript interactivity',    12, 'done',       'DOM manipulation',         'medium'),
(4, 'Deploy to GitHub Pages',          NULL, 'done',     'Git & deployment',         'low');

-- -------------------------
-- Insert Enrollments
-- -------------------------
INSERT INTO enrollment (user_id, course_id, grade, progress) VALUES
(1, 1, 88.5, 100),   -- James: Full-Stack (complete)
(1, 2, NULL, 30),    -- James: Python DS (in progress)
(2, 2, 92.0, 100),   -- Emma: Python DS (complete)
(3, 5, NULL, 60),    -- Daniel: Frontend (in progress)
(4, 3, NULL, 45),    -- Sarah: Mobile (in progress)
(5, 5, 95.0, 100),   -- Matthew: Frontend (complete)
(6, 1, NULL, 70),    -- Olivia: Full-Stack (in progress)
(7, 1, 78.0, 100),   -- Michael: Full-Stack (complete)
(8, 1, 84.0, 100),   -- Francis: Full-Stack (complete)
(9, 5, NULL, 80),    -- David: Frontend (in progress)
(10, 1, NULL, 0);    -- Jessica (mentor): Full-Stack (auditing)

-- -------------------------
-- Insert Submissions (8)
-- -------------------------
INSERT INTO submission (user_id, sub_date, lesson_id, ai_score, feedback) VALUES
(1, '2025-03-01 10:00:00', 1, 91, 'Excellent RESTful route structure. Minor: missing input validation middleware.'),
(1, '2025-03-05 14:30:00', 2, 85, 'Schema is in 3NF. Suggested index on user_id FK would improve query performance.'),
(2, '2025-03-02 09:00:00', 5, 78, 'Good use of broadcasting. Array slicing syntax needs review in problems 3 and 4.'),
(3, '2025-03-10 16:00:00', 10, 88, 'Semantic HTML is clean and well-structured. Add aria-label to nav elements.'),
(5, '2025-02-20 11:00:00', 11, 95, 'Excellent mastery of CSS Grid. Creative responsive layout. 5/5 for originality.'),
(7, '2025-03-08 10:00:00', 3, 82, 'useEffect cleanup function missing, which causes memory leak on unmount. Fix and resubmit.'),
(8, '2025-03-09 15:00:00', 3, 90, 'Custom hook is well-abstracted. Minor: memoize the callback with useCallback.'),
(9, '2025-03-11 09:30:00', 12, 76, 'DOM event delegation pattern is correct. Async fetch error handling is incomplete.');

-- -------------------------
-- Insert Lesson Tags
-- -------------------------
INSERT INTO lesson_tag (lesson_id, tag) VALUES
(1, 'backend'), (1, 'api'), (1, 'http'),
(2, 'database'), (2, 'sql'), (2, 'postgresql'),
(3, 'frontend'), (3, 'react'), (3, 'hooks'),
(4, 'security'), (4, 'auth'), (4, 'jwt'),
(5, 'python'), (5, 'numpy'), (5, 'arrays'),
(6, 'python'), (6, 'pandas'), (6, 'data-wrangling'),
(7, 'visualization'), (7, 'matplotlib'), (7, 'charts'),
(8, 'mobile'), (8, 'react-native'),
(9, 'mobile'), (9, 'auth'), (9, 'supabase'),
(10, 'html'), (10, 'semantics'), (10, 'accessibility'),
(11, 'css'), (11, 'layout'), (11, 'flexbox'),
(12, 'javascript'), (12, 'dom'), (12, 'async');

-- -------------------------
-- Insert Blueprint Tech Recs
-- -------------------------
INSERT INTO blueprint_tech (blueprint_id, tech) VALUES
(1, 'React'), (1, 'Node.js'), (1, 'PostgreSQL'), (1, 'Socket.io'),
(2, 'React'), (2, 'Chart.js'), (2, 'Supabase'), (2, 'TypeScript'),
(3, 'React Native'), (3, 'Supabase'), (3, 'TypeScript'),
(4, 'HTML'), (4, 'Tailwind CSS'), (4, 'JavaScript'),
(5, 'React'), (5, 'Node.js'), (5, 'WebSocket'), (5, 'Redis');
