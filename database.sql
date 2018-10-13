/*
 Navicat Premium Data Transfer

 Source Server         : Heroku
 Source Server Type    : PostgreSQL
 Source Server Version : 90609
 Source Host           : ec2-54-247-81-97.eu-west-1.compute.amazonaws.com:5432
 Source Catalog        : d4k8v7etfijv40
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 90609
 File Encoding         : 65001

 Date: 13/10/2018 12:08:16
*/


-- ----------------------------
-- Sequence structure for fitnesi_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."fitnesi_id_seq";
CREATE SEQUENCE "public"."fitnesi_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for kraji_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."kraji_id_seq";
CREATE SEQUENCE "public"."kraji_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for lokacije_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."lokacije_id_seq";
CREATE SEQUENCE "public"."lokacije_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for tocke_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."tocke_id_seq";
CREATE SEQUENCE "public"."tocke_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for uporabniki_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."uporabniki_id_seq";
CREATE SEQUENCE "public"."uporabniki_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for vaje_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."vaje_id_seq";
CREATE SEQUENCE "public"."vaje_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for vrste_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."vrste_id_seq";
CREATE SEQUENCE "public"."vrste_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Table structure for fitnesi
-- ----------------------------
DROP TABLE IF EXISTS "public"."fitnesi";
CREATE TABLE "public"."fitnesi" (
  "id" int4 NOT NULL DEFAULT nextval('fitnesi_id_seq'::regclass),
  "uporabnik_id" int4 NOT NULL,
  "lokacija_id" int4 NOT NULL,
  "vrsta_id" int4 NOT NULL,
  "ime" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "opis" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of fitnesi
-- ----------------------------
INSERT INTO "public"."fitnesi" VALUES (1, 1, 1, 1, 'Fitnes Velenje', 'opis fitnesa velenje');

-- ----------------------------
-- Table structure for kraji
-- ----------------------------
DROP TABLE IF EXISTS "public"."kraji";
CREATE TABLE "public"."kraji" (
  "id" int4 NOT NULL DEFAULT nextval('kraji_id_seq'::regclass),
  "ime" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "posta" varchar(50) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of kraji
-- ----------------------------
INSERT INTO "public"."kraji" VALUES (1, 'Velenje', '1234');

-- ----------------------------
-- Table structure for lokacije
-- ----------------------------
DROP TABLE IF EXISTS "public"."lokacije";
CREATE TABLE "public"."lokacije" (
  "id" int4 NOT NULL DEFAULT nextval('lokacije_id_seq'::regclass),
  "kraj_id" int4 NOT NULL,
  "ime" varchar(50) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of lokacije
-- ----------------------------
INSERT INTO "public"."lokacije" VALUES (1, 1, 'Park');

-- ----------------------------
-- Table structure for slike
-- ----------------------------
DROP TABLE IF EXISTS "public"."slike";
CREATE TABLE "public"."slike" (
  "id" int4 NOT NULL,
  "fitnes_id" int4 NOT NULL
)
;

-- ----------------------------
-- Table structure for tocke
-- ----------------------------
DROP TABLE IF EXISTS "public"."tocke";
CREATE TABLE "public"."tocke" (
  "id" int4 NOT NULL DEFAULT nextval('tocke_id_seq'::regclass),
  "posX" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "posY" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "posZ" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "vaja_id" int4 NOT NULL,
  "vr_offset" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "slika" int8
)
;

-- ----------------------------
-- Records of tocke
-- ----------------------------
INSERT INTO "public"."tocke" VALUES (1, '38.263', '16.046', '3.493', 1, '35', 89);
INSERT INTO "public"."tocke" VALUES (8, '35.445', '20.010', '30.356', 8, '-18', 88);
INSERT INTO "public"."tocke" VALUES (13, '0', '0', '0', 13, '0', 1);
INSERT INTO "public"."tocke" VALUES (14, '0', '0', '0', 14, '0', 1);
INSERT INTO "public"."tocke" VALUES (16, '0', '0', '0', 16, '0', 1);
INSERT INTO "public"."tocke" VALUES (4, '33.154', '15', '-7.00', 4, '27', 88);
INSERT INTO "public"."tocke" VALUES (2, '33.154', '15.231', '-11.313', 2, '23', 91);
INSERT INTO "public"."tocke" VALUES (3, '33.154', '5.697', '-6.235', 3, '25', 0);
INSERT INTO "public"."tocke" VALUES (7, '0', '0', '0', 7, '0', 0);
INSERT INTO "public"."tocke" VALUES (11, '0', '0', '0', 11, '0', 0);
INSERT INTO "public"."tocke" VALUES (15, '0', '0', '0', 15, '0', 0);
INSERT INTO "public"."tocke" VALUES (12, '24.426', '-6.332', '2.042', 12, '0', 88);
INSERT INTO "public"."tocke" VALUES (5, '34.267', '19.015', '21.647', 5, '-20', 88);
INSERT INTO "public"."tocke" VALUES (6, '0', '0', '0', 6, '0', 0);
INSERT INTO "public"."tocke" VALUES (9, '47.931', '17.769', '4.454', 9, '32', 88);
INSERT INTO "public"."tocke" VALUES (10, '34.340', '17.158', '3.304', 10, '34.441', 88);

-- ----------------------------
-- Table structure for uporabniki
-- ----------------------------
DROP TABLE IF EXISTS "public"."uporabniki";
CREATE TABLE "public"."uporabniki" (
  "id" int4 NOT NULL DEFAULT nextval('uporabniki_id_seq'::regclass),
  "ime" varchar(20) COLLATE "pg_catalog"."default",
  "priimek" varchar(20) COLLATE "pg_catalog"."default",
  "email" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "vzdevek" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "geslo" varchar(50) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of uporabniki
-- ----------------------------
INSERT INTO "public"."uporabniki" VALUES (1, 'Alen', 'Budimir', 'email', 'budi1200', 'root');

-- ----------------------------
-- Table structure for vaje
-- ----------------------------
DROP TABLE IF EXISTS "public"."vaje";
CREATE TABLE "public"."vaje" (
  "id" int4 NOT NULL DEFAULT nextval('vaje_id_seq'::regclass),
  "fitnes_id" int4 NOT NULL,
  "ime" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "url" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "opis" text COLLATE "pg_catalog"."default",
  "url_slika" varchar(255) COLLATE "pg_catalog"."default",
  "frames_slika" int4
)
;

-- ----------------------------
-- Records of vaje
-- ----------------------------
INSERT INTO "public"."vaje" VALUES (8, 1, 'Dvigovanje nog do 90 stopinj', '../videi/velenje/zunaj/dvigovanje_nog_do_90_stopinj.mp4', 'Na drog se primite tako, da bodo roke najmanj v širini ramen. Dvignite noge do kota 90° glede na trup. V zgornji točki zadržite položaj za 10 sekund. Imejte napete trebušne mišice a kljub temu poskušajte rahlo dihati, ne zadržujte sape. Po izteku zadanega časa noge počasi spet spustite v začetni položaj. ', '../slike/vaje/zunaj/dvigovanje_nog_do_90_stopinj.jpg', 9);
INSERT INTO "public"."vaje" VALUES (5, 1, 'Dvig nog 180 stopinj', '../videi/velenje/zunaj/dvig_nog_180_stopinj.mp4', 'Na drog se primite tako, da bodo roke v širini ramen. Noge držite iztegnjene, nato jih skupaj ter počasi dvigujte do kota 180°. Ko se prsti stopal dotaknejo droga zadržite položaj za del sekunde in se počasi vrnite nazaj v začetni položaj. Imejte napete trebušne mišice in poskušajte rahlo dihati, ne zadržujte sape. Pri dvigu nog izdihnite, pri spustu pa vdihnite.', '../slike/vaje/zunaj/dvig_nog_180_stopinj.jpg', 16);
INSERT INTO "public"."vaje" VALUES (10, 1, 'Ozki priteg pred glavo podprijem', '../videi/velenje/zunaj/ozki_priteg_pred_glavo_podprijem.mp4', 'Drog primete z podprijemu tako, da so dlani čim bližje. Vajo začnite v prostem visu, kjer so roke popolnoma iztegnjene. Trup naj bo raven in prsi izbočene. Potegnite rame navzdol in skupaj. Povlecite nadlahti proti telesu in tako dvignite trup do najvišje možne točke. Lopatice v tem položaju naj ostanejo potegnjene nazaj in navzdol, prsi pa izbočene. Počasi se spustite v začetni položaj, dokler niso roke povsem iztegnjene.', '../slike/vaje/zunaj/ozki_priteg_pred_glavo_podprijem.jpg', 9);
INSERT INTO "public"."vaje" VALUES (12, 1, 'Ozki skleci na tleh diamond', '../videi/velenje/zunaj/ozki_skleci_na_tleh_diamond.mp4', 'Iztegnemo roke in dlani postavimo skupaj, tako da se palca in kazalca obeh rok dotikata. Telo je vzravnano, pogled je usmerjen v tla. Vdihnemo in vajo izvedemo tako, da telo, ki je ves čas vzravnano s krčenjem rok v komolcih spustimo proti tlom. Komolce ne tišimo k trupu ampak jih počasi spuščamo starn od telesa. Ko je telo vzporedno s tlemi oziroma se s prsmi skoraj dotikamo tal, se z iztegovanjem komolcev dvignemo nazaj v začetni položaj. Med dvigovanjem telesa izdihnemo.', '../slike/vaje/zunaj/ozki_skleci_na_tleh_diamond.jpg', 12);
INSERT INTO "public"."vaje" VALUES (13, 1, 'Priteg pred glavo srednji prijem', '../videi/velenje/zunaj/priteg_pred_glavo_srednji_prijem.mp4', 'Drog primete tako, da so dlani v nadprijemu, prijem pa je širši od ramen (običajno toliko, da je podlaket pravokotno na tla v vrhu zgiba). Vajo začnite v prostem visu, roke so popolnoma iztegnjene. Najprej začnite skupaj stiskati lopatice, nato pa začnite vleči z rokami. Popolnoma se osredotočite na pot komolcev. Te potiskajte dol in nazaj, čim dlje za hrbet. Ko se dvigate in oči prečijo drog, še vedno potiskajte komolce nazaj in se poskusite s sredino prsi dotakniti droga. Ta položaj zadržite za delček sekunde na kar se pa začnite počasi vračati v začetni položaj. Ko ste v dnu vaje, začnite brez premora zopet zategovati lopatice skupaj in se dvigati. ', '../slike/vaje/zunaj/priteg_pred_glavo_srednji_prijem.jpg', 10);
INSERT INTO "public"."vaje" VALUES (7, 1, 'Dvigovanje nog 180 stopinj', '../videi/velenje/zunaj/dvigovanje_nog_180_stopinj.mp4', 'Opis vaje dvigovanje nog', '../slike/vaje/zunaj/dvigovanje_nog_180_stopinj.jpg', 16);
INSERT INTO "public"."vaje" VALUES (9, 1, 'Ozki priteg pred glavo', '../videi/velenje/zunaj/ozki_priteg_pred_glavo.mp4', 'Drog primete tako, da so dlani čimbližje in v nadprijemu, prijem pa je širši od ramen. Vajo začnite v prostem visu, roke so popolnoma iztegnjene. Popolnoma se osredotočite na pot komolcev. Te potiskajte dol in nazaj, čim dlje za hrbet. Ko se dvigate še vedno potiskajte komolce nazaj in se poskusite s sredino prsi dotakniti droga. Ta položaj zadržite za delček sekunde in se začnite počasi vračati v začetni položaj. Ko ste v dnu vaje, začnite brez premora zopet zategovati lopatice skupaj in se dvigati.', '../slike/vaje/zunaj/ozki_priteg_pred_glavo.jpg', 9);
INSERT INTO "public"."vaje" VALUES (1, 1, 'Vaja Brisalci', '../videi/velenje/zunaj/brisalci.mp4', 'Na drog se primite tako, da bodo roke v širini ramen. Noge držite iztegnjene, skupaj ter jih počasi dvignite do kota 180° glede na trup. Iz tega položaja noge najprej spustite v eno stran do vzporednega položaja glede na tla. Nato pa še noge zasučite v nasprotno stran stran ponovno do vzporednega položaja glede na tla. Ko gib izvedete v levo in desno ste opravili eno ponovitev.', '../slike/vaje/zunaj/brisalci.jpg', 12);
INSERT INTO "public"."vaje" VALUES (11, 1, 'Ozki skleci na drogu spredaj', '../videi/velenje/zunaj/ozki_skleci_na_drogu_spredaj.mp4', 'Opis vaje ozki skleci na drogu spredaj', '../slike/vaje/zunaj/ozki_skleci_na_drogu_spredaj.mp4', 9);
INSERT INTO "public"."vaje" VALUES (15, 1, 'Siroki skleci na drogu', '../videi/velenje/zunaj/siroki_skleci_na_drogu.mp4', 'Opis vaje siroki skleci na drogu', '../slike/vaje/zunaj/siroki_skleci_na_drogu.jpg', 11);
INSERT INTO "public"."vaje" VALUES (2, 1, 'Vaja Dipsi', '../videi/velenje/zunaj/dipsi.mp4', 'Roke postavimo vsako na svoj drog. Pogled je usmerjen naprej, telo naj v navpičnem položaju, kolena so pokrčena, komolci so ozko ob telesu. Gib začne v skoraj popolnem iztegu v komolcih in jih počasi upogne ter začne spuščati dol proti tlem. Spet se spusti čim dlje, če je le mogoče, se biceps na dnu dotakne podlakti. Iz spodnje točke se počasi začne dvigovati nazaj v začetni položaj. V vrhu položaja so komolci skoraj iztegnjeni, a nikoli popolnoma.', '../slike/vaje/zunaj/dipsi.jpg', 13);
INSERT INTO "public"."vaje" VALUES (3, 1, 'Skleci na drogu zadaj', '../videi/velenje/zunaj/skleci_na_drogu_zadaj.mp4', 'Opis vaje Skleci na drogu zadaj', '../slike/vaje/zunaj/skleci_na_drogu_zadaj.jpg', 7);
INSERT INTO "public"."vaje" VALUES (4, 1, 'Vaja muscle up', '../videi/velenje/zunaj/muscle_up.mp4', 'Z rokami se primemmo za drog malo širše od ramen. Na drog se pritegnemo do višine ramen, nakar se z rotacijo rok v ramenih in sunkom trupa dvignemo to točke, kjer roke v komolcih stegnemo in se zadržimo v tem položaju za del sekunda. Počasi se spustimo v začetni položaj in gib znova ponovimo.', '../slike/vaje/zunaj/muscle_up.jpg', 7);
INSERT INTO "public"."vaje" VALUES (6, 1, 'Dvig pokrcenih nog 180 stopinj', '../videi/velenje/zunaj/dvig_pokrceno_180.mp4', 'Opis dvig pokrcenih nog 180 stopinj', '../slike/vaje/zunaj/dvig_pokrceno_180.jpg', 11);
INSERT INTO "public"."vaje" VALUES (14, 1, 'Siroki priteg pred glavo', '../videi/velenje/zunaj/siroki_priteg_pred_glavo.mp4', 'Drog primete tako, da so dlani v nadprijemu, prijem pa je zelo širok. Vajo začnite v prostem visu, roke so popolnoma iztegnjene. Najprej začnite skupaj stiskati lopatice, nato pa začnite vleči z rokami. Popolnoma se osredotočite na pot komolcev. Te potiskajte dol in nazaj, čim dlje za hrbet. Ko se dvigate in oči prečijo drog, še vedno potiskajte komolce nazaj in se poskusite s sredino prsi dotakniti droga. Ta položaj zadržite za delček sekunde na kar se pa začnite počasi vračati v začetni položaj. Ko ste v dnu vaje, začnite brez premora zopet zategovati lopatice skupaj in se dvigati.', '../slike/vaje/zunaj/siroki_priteg_pred_glavo.jpg', 9);
INSERT INTO "public"."vaje" VALUES (16, 1, 'Zgibi na drogu spredaj ozki prijem', '../videi/velenje/zunaj/zgibi_na_drogu_spredaj_ozki_prijem.mp4', 'Drog primete tako, da so dlani v nadprijemu, prijem pa je širši od ramen (običajno toliko, da je podlaket pravokotno na tla v vrhu zgiba). Vajo začnite v prostem visu, roke so popolnoma iztegnjene. Najprej začnite skupaj stiskati lopatice, nato pa začnite vleči z rokami. Popolnoma se osredotočite na pot komolcev. Te potiskajte dol in nazaj, čim dlje za hrbet. Ko se dvigate in oči prečijo drog, še vedno potiskajte komolce nazaj in se poskusite s sredino prsi dotakniti droga. Ta položaj zadržite za delček sekunde na kar se pa začnite počasi vračati v začetni položaj. Ko ste v dnu vaje, začnite brez premora zopet zategovati lopatice skupaj in se dvigati.', '../slike/vaje/zunaj/zgibi_na_drogu_spredaj_ozki_prijem.jpg', 8);

-- ----------------------------
-- Table structure for vrste
-- ----------------------------
DROP TABLE IF EXISTS "public"."vrste";
CREATE TABLE "public"."vrste" (
  "id" int4 NOT NULL DEFAULT nextval('vrste_id_seq'::regclass),
  "vrsta" varchar(20) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of vrste
-- ----------------------------
INSERT INTO "public"."vrste" VALUES (1, 'Zunaj');
INSERT INTO "public"."vrste" VALUES (2, 'Znotraj');

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."fitnesi_id_seq"
OWNED BY "public"."fitnesi"."id";
SELECT setval('"public"."fitnesi_id_seq"', 2, true);
ALTER SEQUENCE "public"."kraji_id_seq"
OWNED BY "public"."kraji"."id";
SELECT setval('"public"."kraji_id_seq"', 2, true);
ALTER SEQUENCE "public"."lokacije_id_seq"
OWNED BY "public"."lokacije"."id";
SELECT setval('"public"."lokacije_id_seq"', 2, true);
ALTER SEQUENCE "public"."tocke_id_seq"
OWNED BY "public"."tocke"."id";
SELECT setval('"public"."tocke_id_seq"', 5, true);
ALTER SEQUENCE "public"."uporabniki_id_seq"
OWNED BY "public"."uporabniki"."id";
SELECT setval('"public"."uporabniki_id_seq"', 2, true);
ALTER SEQUENCE "public"."vaje_id_seq"
OWNED BY "public"."vaje"."id";
SELECT setval('"public"."vaje_id_seq"', 17, true);
ALTER SEQUENCE "public"."vrste_id_seq"
OWNED BY "public"."vrste"."id";
SELECT setval('"public"."vrste_id_seq"', 3, true);

-- ----------------------------
-- Primary Key structure for table fitnesi
-- ----------------------------
ALTER TABLE "public"."fitnesi" ADD CONSTRAINT "fitnesi_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table kraji
-- ----------------------------
ALTER TABLE "public"."kraji" ADD CONSTRAINT "kraji_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table lokacije
-- ----------------------------
ALTER TABLE "public"."lokacije" ADD CONSTRAINT "lokacije_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table slike
-- ----------------------------
ALTER TABLE "public"."slike" ADD CONSTRAINT "slike_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table tocke
-- ----------------------------
ALTER TABLE "public"."tocke" ADD CONSTRAINT "tocke_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table uporabniki
-- ----------------------------
ALTER TABLE "public"."uporabniki" ADD CONSTRAINT "uporabniki_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table vaje
-- ----------------------------
ALTER TABLE "public"."vaje" ADD CONSTRAINT "vaje_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table vrste
-- ----------------------------
ALTER TABLE "public"."vrste" ADD CONSTRAINT "vrste_pkey" PRIMARY KEY ("id");
