BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "menu" ADD COLUMN "city" bigint;
ALTER TABLE "menu" ADD COLUMN "country" bigint;
ALTER TABLE "menu" ADD COLUMN "category" bigint;
ALTER TABLE "menu" ADD COLUMN "tags" json;
ALTER TABLE "menu" ADD COLUMN "latitude" double precision;
ALTER TABLE "menu" ADD COLUMN "longitude" double precision;
ALTER TABLE "menu" ADD COLUMN "address" text;
ALTER TABLE "menu" ADD COLUMN "phone" text;
ALTER TABLE "menu" ADD COLUMN "email" text;
ALTER TABLE "menu" ADD COLUMN "website" text;

--
-- MIGRATION VERSION FOR menu_pal
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('menu_pal', '20240930185042070', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240930185042070', "timestamp" = now();

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
