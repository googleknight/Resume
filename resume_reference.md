# SHUBHAM MATHUR — Exhaustive Reference (NOT for submission)

> Purpose: the full inventory of real, defensible material. Use it to (a) refine the 1-page master, (b) tailor for the rare application that allows it, (c) draft cover-letter intros, recruiter messages, and interview case studies.
> Everything here is real (portfolio + project files + your clarifications). Items not shipped are explicitly marked **[not shipped]** so they never leak into a submitted resume as a false claim.

**Senior / Staff Software Engineer** · 8+ yrs
+91-9443129941 · shubham.mathur.wrk@gmail.com · linkedin.com/in/shubham-mathur-biz · github.com/googleknight · googleknight.github.io

---

## SUMMARY VARIANTS (pick per context)

- **Default (master):** Senior/Staff SWE, 8+ yrs, backend & distributed systems with deep focus on identity/auth, security, and production GenAI. Architected compliance & auth platforms for 4.5M+ users, built & shipped an enterprise RAG assistant, OSS at Stripe/Apple/Wise. Owns ambiguous, cross-team problems end-to-end.
- **AI-leaning roles:** Backend engineer who ships _production_ GenAI — built & shipped a RAG knowledge assistant on Vertex AI (citations, confidence scoring, PII scrubbing) and a secure GenAI banking IVR (PII redaction, prompt-injection guardrails) — on top of 8 yrs of auth, security, and distributed-systems work.
- **Platform/infra-leaning roles:** Distributed-systems engineer specializing in identity/auth modernization (Go + gRPC strangler migrations), event-driven pipelines (RabbitMQ/Service Bus), and reliability — scaled batch systems 10×+ and cut latency 50–99.9%.

---

## EXPERIENCE — FULL BULLET INVENTORY

### CivilGrid — Staff Software Engineer · Remote, India · Apr 2026 – Present

- Root-caused and fixed four compounding bugs in the core GIS map metadata interaction: viewport clipping (recoverable only by reload), pan/zoom anchor drift (missing `viewState` dep froze coords against a stable ref), z-index/occlusion (fixed with a side-flip collision algorithm + widget self-registration pattern), and crash isolation (per-feature try/catch so one null property no longer silenced every layer at a point).
- Led architecture analysis to migrate ~214 hardcoded GIS layer configs (spread across 4+ TS files) to a feature-flagged, Redis-cached, parity-checked DB-driven system — mapped the dependency graph, authored the data-access interface contract, flagged a schema divergence and two incompatible config maps before any code was written.
- Established Playwright E2E foundation (data-testid coverage across auth, map controls, project & field-notes), unblocking external QA automation across features at once.
- Fixed silent backend data bugs: S3 pre-signed-URL contract mismatch on fresh uploads; numeric-column lexicographic sort from Postgres `->>` text extraction (resolved with a dedicated float8 CTE column + regression test).
- Shipped admin org-creation validation with a shared US-states module across FE/BE; resolved a cross-PR CSS stacking-context regression and an invisible Puppeteer background-job error-logging bug.
- Supporting hiring and build-out of the India engineering team (staff-scope signal).

### Vimeo — Senior Software Engineer · Remote, India · Jan 2024 – Jan 2026

- **User Deactivation (Trust & Safety):** Sole technical owner. Re-architected a non-deterministic legacy pipeline; 195K+ "zombie" accounts flagged-deactivated could still log in. DDD single-source-of-truth in the User object; RabbitMQ async with MD5 payload matching; cron algorithm decoupling user vs clip deletion. Scaled bulk 4K → 50K+ accounts (and per-account capacity <4K → 1.6M+ clips), days → <2 min, 0% post-launch incidents, reconciled 1M+/195K+ orphaned records, Grafana/PagerDuty observability.
- **Anumati Auth Service (Identity):** Ground-up Go service, dual-protocol REST + gRPC/Protobuf, decoupling auth from a 15-yr PHP monolith. Reverse-engineered code from 2008 across 40+ integration points → first-ever auth-flow blueprint. Backward-compat middleware replicating legacy cookie/hashing exactly for a Strangler-pattern incremental rollout. Structured logging + distributed tracing from day 1. Led code reviews, mentored team on Go/microservices.
- **Age Assurance Platform:** Lead developer, architect & tech-spec author. Age verification across 5 platforms (Web, iOS, Android, tvOS, Vision Pro) for 4.5M+ users (UK OSA, EU DSA; fines up to 10% global revenue). Zero-PII / zero-trust SPI filtering at the Persona vendor edge (store pass/fail tokens only). Region/capability-based middleware gates. QR-code "Device Handover" API for tvOS input constraints. Payment-engineering exemption logic to bypass verified-card subscribers (retention).
- **Age Assurance Analytics:** Took ownership of the analytics gap rather than waiting on the data team. Understood the full pipeline (event tracking → Snowflake → Amplitude); built funnel, drop-off, failure/error breakdown, and cohort/segmentation (region, user type, method) in ~2–3 days. Designed the event schema (`age_verification_*` events). Gave leadership decision-grade visibility, showed low friction → accelerated compliant rollout ~20 days early; used at C-level.
- **VimeoIQ — RAG Knowledge Assistant (Applied GenAI):** Built & shipped a production RAG assistant. Stack: GCP Cloud Run (Slack-bot + RAG engine + scheduled ingestion job), Vertex AI Gemini 1.5 Flash + text-embedding-005 + Vector Search, Cloud SQL Postgres, Cloud Tasks/Scheduler, Secret Manager, GitHub Actions CI/CD. Sources: Google Docs (employee-facing internal assistant). Features: source citations, per-answer confidence scoring, team routing, 👍/👎 feedback loop, pre-LLM PII/secret scrubbing. First release in ~8 weeks (Oct→Dec) to all India tech teams + select US members. **[not shipped]** Phase-2 _discussed but not applied_: retrieval-accuracy gains, more sources, and permission-aware/access-controlled retrieval scoping answers to each user's data visibility.
- **Security & Auth Hardening:** Identified a critical MFA-bypass vulnerability; authored the Backup Recovery Code design spec. Hardened auth against XSS & open-redirect. Set source-of-truth specs for Compliance & Auth domains (Identity-team standards).

### McKinsey & Company (McKinsey Digital — hands-on product/platform build studio) · Bengaluru, India

**Engineer 2 · Nov 2021 – Jan 2024**

- GenAI banking IVR (NestJS): secure OpenAI integration, PII redaction, stateful conversation orchestration (Redis), intent detection, hallucination/prompt-injection guardrails for real-time voice.
- Medication-adherence platform (Azure Functions, Service Bus, Twilio): built the reliable SMS reminder/notification system (fault-tolerant routing, multi-timezone scheduling) plus frontend business flows and login/signup; HIPAA-compliant — platform contributed to a 34% reduction in hospital readmissions.
- Optimized NestJS microservices for 500K+ MAU, −50% API latency via caching + indexing. Led architecture reviews, mentored 4 engineers, set API standards, drove CI/CD.

**Engineer 1 · Jul 2018 – Nov 2021** _(incl. earlier intern/junior period)_

- Malaysian banking self-service platform (20M+ customers): built REST microservices over legacy government-agency SOAP integrations; fetch/normalize/cache credit data; +60% RM productivity.
- **Identity & access** — Project-management/engagement tool for consultants (Express, GraphQL, Postgres, AWS): RBAC/ACLs, cross-platform search, deep linking, **Okta SSO** + Box API integration; MVP → org-wide adoption. _(Earliest point in the McKinsey→Vimeo identity/auth through-line.)_
- Insurance recommendation engine (React, Spring Boot, Node.js, AWS Lambda): 30+ products, 1.3M users, −90% manual workflow.
- Self-service telecom app (React, Node/Hapi, Docker): 10M+ users, +40% unit-test coverage, retry/reliability.
- Skill-based staffing tool (Neo4j): skills↔people↔project relationship mapping.

---

## OPEN SOURCE

- **Stripe `link-cli` (merged):** Hardened React-Ink approval-polling for spend requests — shared `TERMINAL_STATUSES` set so the hook/flows exit cleanly on every terminal state, finalized UI phase for non-approved outcomes, default timeout 300→600s to outlive the server's ~8-min approval window.
- **Stripe `stripe-cli` (open / in review)** _[not merged]_: Fixed a stdio teardown race in the go-plugin host where `stripe <plugin> --help` truncated output — replaced Managed client lifecycle with locally-owned `io.Pipe` writers + `sync.WaitGroup` drain goroutines so cleanup flushes stdout/stderr before `client.Kill()`. _(Use only when describing depth; keep off the submitted resume until merged.)_
- **Apple `password-manager-resources` (merged, 4.6k★):** Fixed an XSS in the password-rules toolkit; refactored character-escaping for secure HTML generation.
- **Wise `PipelineWise` (merged, 650★):** Fixed a data-loss bug in the MySQL tap — numeric binlog filename comparison failing after 10^6 files (string sort).
- **Reactive Resume (merged, 35k★):** Fixed CV import/export bugs.

---

## PERSONAL PROJECTS (for AI/agentic + systems-depth signal)

- **Food Delivery Service API** — TS/Node/Express/Postgres/Prisma. Specs-driven _agentic_ development: drove AI agents with high-fidelity specs/ADRs to build a full RBAC backend (JWT + refresh rotation), dev portal (Swagger/Postman), UUIDv7 schema — 7-day scope in 3 days.
- **Mini Workflow Engine** — Zapier-like: execution engine with transform/filter steps, shared context, HTTP integrations w/ exponential-backoff retries; Next.js + Monaco editor.
- **CRDT Library (npm)** — GCounter/PNCounter/GSet etc.; three-layer testing (unit + property-based + randomized simulation/chaos).
- **System Design Notes**, **Value-Time** Chrome extension.

---

## SKILLS (full)

- **Languages:** JavaScript, TypeScript, SQL · _Familiar:_ Go, PHP, Python, Java, C++
- **Backend:** Node.js, NestJS, Express.js · _Familiar:_ Spring Boot, FastAPI
- **Frontend:** React, Next.js, Tailwind, Jest, Web Security (CSP/XSS)
- **Data:** PostgreSQL, MySQL, Redis, MongoDB, Neo4j · _Familiar:_ Snowflake
- **Messaging:** RabbitMQ, Azure Service Bus · _Familiar:_ Kafka
- **Cloud / DevOps:** Docker, GitHub Actions, GCP (Cloud Run, Vertex AI), CircleCI · _Familiar:_ AWS, Azure, Kubernetes, Grafana
- **AI / GenAI:** RAG, LLM orchestration, prompt engineering, embeddings & vector search, function calling, PII & prompt-injection guardrails, agentic / AI-assisted development
- **Architecture:** Microservices, DDD, Event-Driven, CQRS, gRPC, REST/GraphQL, OAuth2/JWT, Strangler/Repository/Strategy patterns, Observability

---

## EDUCATION & RECOGNITION

- **VIT University** — B.Tech, Information Technology · Vellore · 2018 (honors; Distributed Systems & Image Processing focus)
- **Awards:** Vimeo "Pat on the Back" (2024) — high-impact project delivery.
- **Certs:** AWS Certified Cloud Practitioner (2021).
- **Publications:** IEEE ICACCI-2016 (spatial-domain image watermarking); IJRASET 2017 (ASA Max-Min load balancing).
