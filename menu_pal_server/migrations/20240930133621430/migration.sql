BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "menu" DROP COLUMN "name";
ALTER TABLE "menu" ADD COLUMN "title" text;
ALTER TABLE "menu" ADD COLUMN "description" text;
ALTER TABLE "menu" ADD COLUMN "thumbnail" text;
ALTER TABLE "menu" ADD COLUMN "type" text;

--
-- MIGRATION VERSION FOR menu_pal
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('menu_pal', '20240930133621430', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240930133621430', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
