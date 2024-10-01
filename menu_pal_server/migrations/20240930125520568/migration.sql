BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "menu" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "data" bigint NOT NULL,
    "link" text NOT NULL,
    "brand" text NOT NULL,
    "star" bigint NOT NULL
);


--
-- MIGRATION VERSION FOR menu_pal
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('menu_pal', '20240930125520568', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240930125520568', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
