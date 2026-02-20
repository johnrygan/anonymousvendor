BEGIN;


--
-- MIGRATION VERSION FOR anonymousvendor
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('anonymousvendor', '20260219073054540', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260219073054540', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
