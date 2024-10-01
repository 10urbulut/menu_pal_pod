BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "address" (
    "id" bigserial PRIMARY KEY,
    "street" text,
    "city" bigint,
    "town" bigint,
    "district" bigint,
    "country" bigint,
    "createdAt" timestamp without time zone,
    "updatedAt" timestamp without time zone,
    "deletedAt" timestamp without time zone,
    "createdBy" text,
    "latitude" double precision,
    "longitude" double precision,
    "population" bigint,
    "area" double precision
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "city" (
    "id" bigserial PRIMARY KEY,
    "name" text,
    "country" bigint,
    "createdAt" timestamp without time zone,
    "updatedAt" timestamp without time zone,
    "deletedAt" timestamp without time zone,
    "createdBy" text,
    "latitude" double precision,
    "longitude" double precision,
    "population" bigint,
    "area" double precision,
    "currency" text,
    "timezone" text
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "country" (
    "id" bigserial PRIMARY KEY,
    "name" text,
    "createdAt" timestamp without time zone,
    "updatedAt" timestamp without time zone,
    "deletedAt" timestamp without time zone,
    "createdBy" text,
    "latitude" double precision,
    "longitude" double precision,
    "population" bigint,
    "area" double precision,
    "currency" text,
    "timezone" text
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "district" (
    "id" bigserial PRIMARY KEY,
    "name" text,
    "city" bigint,
    "createdAt" timestamp without time zone,
    "updatedAt" timestamp without time zone,
    "deletedAt" timestamp without time zone,
    "createdBy" text,
    "latitude" double precision,
    "longitude" double precision,
    "population" bigint,
    "area" double precision,
    "timezone" text
);

--
-- ACTION ALTER TABLE
--
ALTER TABLE "menu" DROP COLUMN "latitude";
ALTER TABLE "menu" DROP COLUMN "longitude";
ALTER TABLE "menu" DROP COLUMN "address";
ALTER TABLE "menu" ADD COLUMN "address" json;
--
-- ACTION CREATE TABLE
--
CREATE TABLE "town" (
    "id" bigserial PRIMARY KEY,
    "name" text,
    "district" bigint,
    "createdAt" timestamp without time zone,
    "updatedAt" timestamp without time zone,
    "deletedAt" timestamp without time zone,
    "createdBy" text,
    "latitude" double precision,
    "longitude" double precision,
    "population" bigint,
    "area" double precision,
    "timezone" text
);


--
-- MIGRATION VERSION FOR menu_pal
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('menu_pal', '20240930190058378', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240930190058378', "timestamp" = now();

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
