BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "address" DROP COLUMN "city";
ALTER TABLE "address" DROP COLUMN "town";
ALTER TABLE "address" DROP COLUMN "district";
ALTER TABLE "address" DROP COLUMN "country";
ALTER TABLE "address" ADD COLUMN "cityId" bigint;
ALTER TABLE "address" ADD COLUMN "townId" bigint;
ALTER TABLE "address" ADD COLUMN "districtId" bigint;
ALTER TABLE "address" ADD COLUMN "countryId" bigint;

--
-- MIGRATION VERSION FOR menu_pal
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('menu_pal', '20241007085530067', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20241007085530067', "timestamp" = now();

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
