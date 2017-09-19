ALTER TABLE "User" ADD is_human BOOLEAN;
UPDATE "User" SET is_human = true WHERE id IN(1, 2, 4);
DELETE FROM "User" WHERE is_human = true;
DROP TABLE contact;
