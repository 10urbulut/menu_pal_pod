BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "menu_type" (
    "id" bigserial PRIMARY KEY,
    "name" text,
    "description" text
);


--
-- MIGRATION VERSION FOR menu_pal
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('menu_pal', '20241001130346357', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20241001130346357', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod_auth
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_auth', '20240520102713718', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240520102713718', "timestamp" = now();


COMMIT;
