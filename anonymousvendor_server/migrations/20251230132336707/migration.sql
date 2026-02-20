BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "image_file" DROP CONSTRAINT "image_file_fk_0";
ALTER TABLE "image_file" DROP COLUMN "userId";
ALTER TABLE "image_file" ADD COLUMN "productId" bigint;
--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "image_file"
    ADD CONSTRAINT "image_file_fk_0"
    FOREIGN KEY("productId")
    REFERENCES "product"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- MIGRATION VERSION FOR anonymousvendor
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('anonymousvendor', '20251230132336707', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20251230132336707', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
