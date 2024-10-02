BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "city" DROP COLUMN "country";
ALTER TABLE "city" ADD COLUMN "countryId" bigint;
ALTER TABLE ONLY "city"
    ADD CONSTRAINT "city_fk_0"
    FOREIGN KEY("countryId")
    REFERENCES "country"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
--
-- ACTION ALTER TABLE
--
ALTER TABLE "district" DROP COLUMN "city";
ALTER TABLE "district" ADD COLUMN "cityId" bigint;
ALTER TABLE ONLY "district"
    ADD CONSTRAINT "district_fk_0"
    FOREIGN KEY("cityId")
    REFERENCES "city"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- MIGRATION VERSION FOR menu_pal
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('menu_pal', '20241002095557808', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20241002095557808', "timestamp" = now();

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
