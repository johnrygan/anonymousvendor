BEGIN;

--
-- ACTION DROP TABLE
--
DROP TABLE "image_file" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "image_file" (
    "id" bigserial PRIMARY KEY,
    "userId" bigint,
    "name" text NOT NULL,
    "path" text NOT NULL,
    "storageId" text NOT NULL,
    "createdAt" timestamp without time zone
);

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "image_file"
    ADD CONSTRAINT "image_file_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "appuser"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR anonymousvendor
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('anonymousvendor', '20251229115456073', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20251229115456073', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
