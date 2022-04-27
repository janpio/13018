-- AlterTable
ALTER TABLE "models" ADD COLUMN     "collection_id" TEXT NOT NULL DEFAULT E'xxx.xxx.xxx.xxx';

-- CreateTable
CREATE TABLE "collections" (
    "token" TEXT NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "collections_pkey" PRIMARY KEY ("token")
);

-- CreateDefault
INSERT INTO "collections" (
  token,name
) 
VALUES ('xxx.xxx.xxx.xxx','test');

-- AddForeignKey
ALTER TABLE "models" ADD CONSTRAINT "models_collection_id_fkey" FOREIGN KEY ("collection_id") REFERENCES "collections"("token") ON DELETE RESTRICT ON UPDATE CASCADE;
