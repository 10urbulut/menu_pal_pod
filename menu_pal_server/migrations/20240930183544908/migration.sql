BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "menu" ADD COLUMN "createdAt" timestamp without time zone;
ALTER TABLE "menu" ADD COLUMN "updatedAt" timestamp without time zone;
ALTER TABLE "menu" ADD COLUMN "deletedAt" timestamp without time zone;
ALTER TABLE "menu" ADD COLUMN "createdBy" text;

--
-- MIGRATION VERSION FOR menu_pal
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('menu_pal', '20240930183544908', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240930183544908', "timestamp" = now();

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
