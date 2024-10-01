BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "menu" DROP COLUMN "data";
ALTER TABLE "menu" ALTER COLUMN "name" DROP NOT NULL;
ALTER TABLE "menu" ALTER COLUMN "link" DROP NOT NULL;
ALTER TABLE "menu" ALTER COLUMN "brand" DROP NOT NULL;
ALTER TABLE "menu" ALTER COLUMN "star" DROP NOT NULL;

--
-- MIGRATION VERSION FOR menu_pal
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('menu_pal', '20240930132612087', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240930132612087', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
