BEGIN;

--
-- ACTION DROP TABLE
--
DROP TABLE "menu_type" CASCADE;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "menu" DROP COLUMN "type";
ALTER TABLE "menu" ADD COLUMN "restaurantTypeIds" json;
ALTER TABLE "menu" ADD COLUMN "restaurantType" json;
--
-- ACTION CREATE TABLE
--
CREATE TABLE "restaurant_type" (
    "id" bigserial PRIMARY KEY,
    "name" text,
    "description" text,
    "createdAt" timestamp without time zone,
    "updatedAt" timestamp without time zone,
    "deletedAt" timestamp without time zone,
    "createdBy" text
);


--
-- MIGRATION VERSION FOR menu_pal
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('menu_pal', '20241003061628995', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20241003061628995', "timestamp" = now();

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
