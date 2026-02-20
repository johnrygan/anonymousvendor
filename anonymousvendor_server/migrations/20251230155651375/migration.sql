BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "product" DROP CONSTRAINT "product_fk_2";
ALTER TABLE "product" DROP COLUMN "imageFileId";

--
-- MIGRATION VERSION FOR anonymousvendor
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('anonymousvendor', '20251230155651375', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20251230155651375', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
