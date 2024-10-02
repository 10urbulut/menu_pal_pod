BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "town" DROP COLUMN "district";
ALTER TABLE "town" DROP COLUMN "area";
ALTER TABLE "town" DROP COLUMN "timezone";
ALTER TABLE "town" ADD COLUMN "districtId" bigint;
ALTER TABLE ONLY "town"
    ADD CONSTRAINT "town_fk_0"
    FOREIGN KEY("districtId")
    REFERENCES "district"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- MIGRATION VERSION FOR menu_pal
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('menu_pal', '20241002175001128', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20241002175001128', "timestamp" = now();

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
