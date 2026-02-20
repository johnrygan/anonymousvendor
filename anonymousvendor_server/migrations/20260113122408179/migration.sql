BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "image_file" ADD COLUMN "_productImagesProductId" bigint;
--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "image_file"
    ADD CONSTRAINT "image_file_fk_1"
    FOREIGN KEY("_productImagesProductId")
    REFERENCES "product"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- MIGRATION VERSION FOR anonymousvendor
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('anonymousvendor', '20260113122408179', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260113122408179', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
