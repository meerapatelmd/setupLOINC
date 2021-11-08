DROP TABLE IF EXISTS deat24linguisticvariant;
CREATE TABLE deat24linguisticvariant (
loinc_num varchar(255),
component varchar(255),
property varchar(255),
time_aspct varchar(255),
system varchar(255),
scale_typ varchar(255),
method_typ varchar(255),
class varchar(255),
shortname varchar(255),
long_common_name varchar(255),
relatednames2 varchar(255),
linguisticvariantdisplayname varchar(255)
);

COPY deat24linguisticvariant FROM '{path_to_csvs}/AccessoryFiles/LinguisticVariants/deAT24LinguisticVariant.csv' CSV HEADER;

DROP TABLE IF EXISTS dede15linguisticvariant;
CREATE TABLE dede15linguisticvariant (
loinc_num varchar(255),
component varchar(255),
property varchar(255),
time_aspct varchar(255),
system varchar(255),
scale_typ varchar(255),
method_typ varchar(255),
class varchar(255),
shortname varchar(255),
long_common_name varchar(255),
relatednames2 varchar(255),
linguisticvariantdisplayname varchar(255)
);

COPY dede15linguisticvariant FROM '{path_to_csvs}/AccessoryFiles/LinguisticVariants/deDE15LinguisticVariant.csv' CSV HEADER;

DROP TABLE IF EXISTS elgr17linguisticvariant;
CREATE TABLE elgr17linguisticvariant (
loinc_num varchar(255),
component varchar(255),
property varchar(255),
time_aspct varchar(255),
system varchar(255),
scale_typ varchar(255),
method_typ varchar(255),
class varchar(255),
shortname varchar(255),
long_common_name varchar(255),
relatednames2 varchar(255),
linguisticvariantdisplayname varchar(255)
);

COPY elgr17linguisticvariant FROM '{path_to_csvs}/AccessoryFiles/LinguisticVariants/elGR17LinguisticVariant.csv' CSV HEADER;

DROP TABLE IF EXISTS esar7linguisticvariant;
CREATE TABLE esar7linguisticvariant (
loinc_num varchar(255),
component varchar(255),
property varchar(255),
time_aspct varchar(255),
system varchar(255),
scale_typ varchar(255),
method_typ varchar(255),
class varchar(255),
shortname varchar(255),
long_common_name varchar(255),
relatednames2 varchar(255),
linguisticvariantdisplayname varchar(255)
);

COPY esar7linguisticvariant FROM '{path_to_csvs}/AccessoryFiles/LinguisticVariants/esAR7LinguisticVariant.csv' CSV HEADER;

DROP TABLE IF EXISTS eses12linguisticvariant;
CREATE TABLE eses12linguisticvariant (
loinc_num varchar(255),
component varchar(255),
property varchar(255),
time_aspct varchar(255),
system varchar(255),
scale_typ varchar(255),
method_typ varchar(255),
class varchar(255),
shortname varchar(255),
long_common_name varchar(255),
relatednames2 varchar(255),
linguisticvariantdisplayname varchar(255)
);

COPY eses12linguisticvariant FROM '{path_to_csvs}/AccessoryFiles/LinguisticVariants/esES12LinguisticVariant.csv' CSV HEADER;

DROP TABLE IF EXISTS etee10linguisticvariant;
CREATE TABLE etee10linguisticvariant (
loinc_num varchar(255),
component varchar(255),
property varchar(255),
time_aspct varchar(255),
system varchar(255),
scale_typ varchar(255),
method_typ varchar(255),
class varchar(255),
shortname varchar(255),
long_common_name varchar(255),
relatednames2 varchar(255),
linguisticvariantdisplayname varchar(255)
);

COPY etee10linguisticvariant FROM '{path_to_csvs}/AccessoryFiles/LinguisticVariants/etEE10LinguisticVariant.csv' CSV HEADER;

DROP TABLE IF EXISTS frbe23linguisticvariant;
CREATE TABLE frbe23linguisticvariant (
loinc_num varchar(255),
component varchar(255),
property varchar(255),
time_aspct varchar(255),
system varchar(255),
scale_typ varchar(255),
method_typ varchar(255),
class varchar(255),
shortname varchar(255),
long_common_name varchar(255),
relatednames2 varchar(255),
linguisticvariantdisplayname varchar(255)
);

COPY frbe23linguisticvariant FROM '{path_to_csvs}/AccessoryFiles/LinguisticVariants/frBE23LinguisticVariant.csv' CSV HEADER;

DROP TABLE IF EXISTS frca8linguisticvariant;
CREATE TABLE frca8linguisticvariant (
loinc_num varchar(255),
component varchar(255),
property varchar(255),
time_aspct varchar(255),
system varchar(255),
scale_typ varchar(255),
method_typ varchar(255),
class varchar(255),
shortname varchar(255),
long_common_name varchar(255),
relatednames2 varchar(255),
linguisticvariantdisplayname varchar(255)
);

COPY frca8linguisticvariant FROM '{path_to_csvs}/AccessoryFiles/LinguisticVariants/frCA8LinguisticVariant.csv' CSV HEADER;

DROP TABLE IF EXISTS frfr18linguisticvariant;
CREATE TABLE frfr18linguisticvariant (
loinc_num varchar(255),
component varchar(255),
property varchar(255),
time_aspct varchar(255),
system varchar(255),
scale_typ varchar(255),
method_typ varchar(255),
class varchar(255),
shortname varchar(255),
long_common_name varchar(255),
relatednames2 varchar(255),
linguisticvariantdisplayname varchar(255)
);

COPY frfr18linguisticvariant FROM '{path_to_csvs}/AccessoryFiles/LinguisticVariants/frFR18LinguisticVariant.csv' CSV HEADER;

DROP TABLE IF EXISTS itit16linguisticvariant;
CREATE TABLE itit16linguisticvariant (
loinc_num varchar(255),
component varchar(255),
property varchar(255),
time_aspct varchar(255),
system varchar(255),
scale_typ varchar(255),
method_typ varchar(255),
class varchar(255),
shortname varchar(255),
long_common_name varchar(255),
relatednames2 text,
linguisticvariantdisplayname varchar(255)
);

COPY itit16linguisticvariant FROM '{path_to_csvs}/AccessoryFiles/LinguisticVariants/itIT16LinguisticVariant.csv' CSV HEADER;

DROP TABLE IF EXISTS kokr13linguisticvariant;
CREATE TABLE kokr13linguisticvariant (
loinc_num varchar(255),
component varchar(255),
property varchar(255),
time_aspct varchar(255),
system varchar(255),
scale_typ varchar(255),
method_typ varchar(255),
class varchar(255),
shortname varchar(255),
long_common_name varchar(255),
relatednames2 varchar(255),
linguisticvariantdisplayname varchar(255)
);

COPY kokr13linguisticvariant FROM '{path_to_csvs}/AccessoryFiles/LinguisticVariants/koKR13LinguisticVariant.csv' CSV HEADER;

DROP TABLE IF EXISTS nlnl22linguisticvariant;
CREATE TABLE nlnl22linguisticvariant (
loinc_num varchar(255),
component varchar(255),
property varchar(255),
time_aspct varchar(255),
system varchar(255),
scale_typ varchar(255),
method_typ varchar(255),
class varchar(255),
shortname varchar(255),
long_common_name varchar(255),
relatednames2 text,
linguisticvariantdisplayname varchar(255)
);

COPY nlnl22linguisticvariant FROM '{path_to_csvs}/AccessoryFiles/LinguisticVariants/nlNL22LinguisticVariant.csv' CSV HEADER;

DROP TABLE IF EXISTS ptbr11linguisticvariant;
CREATE TABLE ptbr11linguisticvariant (
loinc_num varchar(255),
component varchar(255),
property varchar(255),
time_aspct varchar(255),
system varchar(255),
scale_typ varchar(255),
method_typ varchar(255),
class varchar(255),
shortname varchar(255),
long_common_name varchar(255),
relatednames2 text,
linguisticvariantdisplayname varchar(255)
);

COPY ptbr11linguisticvariant FROM '{path_to_csvs}/AccessoryFiles/LinguisticVariants/ptBR11LinguisticVariant.csv' CSV HEADER;

DROP TABLE IF EXISTS ruru20linguisticvariant;
CREATE TABLE ruru20linguisticvariant (
loinc_num varchar(255),
component varchar(255),
property varchar(255),
time_aspct varchar(255),
system varchar(255),
scale_typ varchar(255),
method_typ varchar(255),
class varchar(255),
shortname varchar(255),
long_common_name varchar(255),
relatednames2 text,
linguisticvariantdisplayname varchar(255)
);

COPY ruru20linguisticvariant FROM '{path_to_csvs}/AccessoryFiles/LinguisticVariants/ruRU20LinguisticVariant.csv' CSV HEADER;

DROP TABLE IF EXISTS trtr19linguisticvariant;
CREATE TABLE trtr19linguisticvariant (
loinc_num varchar(255),
component varchar(255),
property varchar(255),
time_aspct varchar(255),
system varchar(255),
scale_typ varchar(255),
method_typ varchar(255),
class varchar(255),
shortname varchar(255),
long_common_name varchar(255),
relatednames2 varchar(255),
linguisticvariantdisplayname varchar(255)
);

COPY trtr19linguisticvariant FROM '{path_to_csvs}/AccessoryFiles/LinguisticVariants/trTR19LinguisticVariant.csv' CSV HEADER;

DROP TABLE IF EXISTS zhcn5linguisticvariant;
CREATE TABLE zhcn5linguisticvariant (
loinc_num varchar(255),
component varchar(255),
property varchar(255),
time_aspct varchar(255),
system varchar(255),
scale_typ varchar(255),
method_typ varchar(255),
class varchar(255),
shortname varchar(255),
long_common_name varchar(255),
relatednames2 text,
linguisticvariantdisplayname varchar(255)
);

COPY zhcn5linguisticvariant FROM '{path_to_csvs}/AccessoryFiles/LinguisticVariants/zhCN5LinguisticVariant.csv' CSV HEADER;

