DROP TABLE IF EXISTS answerlist;
CREATE TABLE answerlist (
answerlistid varchar(255),
answerlistname varchar(255),
answerlistoid varchar(255),
extdefinedyn varchar(255),
extdefinedanswerlistcodesystem varchar(255),
extdefinedanswerlistlink varchar(255),
answerstringid varchar(255),
localanswercode varchar(255),
localanswercodesystem varchar(255),
sequencenumber varchar(255),
displaytext varchar(255),
extcodeid varchar(255),
extcodedisplayname varchar(255),
extcodesystem varchar(255),
extcodesystemversion varchar(255),
extcodesystemcopyrightnotice text,
subsequenttextprompt varchar(255),
description text,
score varchar(255),
answerlistid varchar(255),
answerlistname varchar(255),
answerlistoid varchar(255),
extdefinedyn varchar(255),
extdefinedanswerlistcodesystem varchar(255),
extdefinedanswerlistlink varchar(255),
answerstringid varchar(255),
localanswercode varchar(255),
localanswercodesystem varchar(255),
sequencenumber varchar(255),
displaytext varchar(255),
extcodeid varchar(255),
extcodedisplayname varchar(255),
extcodesystem varchar(255),
extcodesystemversion varchar(255),
extcodesystemcopyrightnotice text,
subsequenttextprompt varchar(255),
description text,
score varchar(255)
);

COPY answerlist FROM '/Users/mpatel/Desktop/Loinc_2.71/AccessoryFiles/AnswerFile/AnswerList.csv' CSV HEADER;

DROP TABLE IF EXISTS answerlist;
CREATE TABLE answerlist (
answerlistid varchar(255),
answerlistname varchar(255),
answerlistoid varchar(255),
extdefinedyn varchar(255),
extdefinedanswerlistcodesystem varchar(255),
extdefinedanswerlistlink varchar(255),
answerstringid varchar(255),
localanswercode varchar(255),
localanswercodesystem varchar(255),
sequencenumber varchar(255),
displaytext varchar(255),
extcodeid varchar(255),
extcodedisplayname varchar(255),
extcodesystem varchar(255),
extcodesystemversion varchar(255),
extcodesystemcopyrightnotice text,
subsequenttextprompt varchar(255),
description text,
score varchar(255),
answerlistid varchar(255),
answerlistname varchar(255),
answerlistoid varchar(255),
extdefinedyn varchar(255),
extdefinedanswerlistcodesystem varchar(255),
extdefinedanswerlistlink varchar(255),
answerstringid varchar(255),
localanswercode varchar(255),
localanswercodesystem varchar(255),
sequencenumber varchar(255),
displaytext varchar(255),
extcodeid varchar(255),
extcodedisplayname varchar(255),
extcodesystem varchar(255),
extcodesystemversion varchar(255),
extcodesystemcopyrightnotice text,
subsequenttextprompt varchar(255),
description text,
score varchar(255)
);

COPY answerlist FROM '/Users/mpatel/Desktop/Loinc_2.71/AccessoryFiles/PanelsAndForms/AnswerList.csv' CSV HEADER;

DROP TABLE IF EXISTS consumername;
CREATE TABLE consumername (
loincnumber varchar(255),
consumername varchar(255)
);

COPY consumername FROM '/Users/mpatel/Desktop/Loinc_2.71/AccessoryFiles/ConsumerName/ConsumerName.csv' CSV HEADER;

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

COPY deat24linguisticvariant FROM '/Users/mpatel/Desktop/Loinc_2.71/AccessoryFiles/LinguisticVariants/deAT24LinguisticVariant.csv' CSV HEADER;

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

COPY dede15linguisticvariant FROM '/Users/mpatel/Desktop/Loinc_2.71/AccessoryFiles/LinguisticVariants/deDE15LinguisticVariant.csv' CSV HEADER;

DROP TABLE IF EXISTS documentontology;
CREATE TABLE documentontology (
loincnumber varchar(255),
partnumber varchar(255),
parttypename varchar(255),
partsequenceorder varchar(255),
partname varchar(255)
);

COPY documentontology FROM '/Users/mpatel/Desktop/Loinc_2.71/AccessoryFiles/DocumentOntology/DocumentOntology.csv' CSV HEADER;

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

COPY elgr17linguisticvariant FROM '/Users/mpatel/Desktop/Loinc_2.71/AccessoryFiles/LinguisticVariants/elGR17LinguisticVariant.csv' CSV HEADER;

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

COPY esar7linguisticvariant FROM '/Users/mpatel/Desktop/Loinc_2.71/AccessoryFiles/LinguisticVariants/esAR7LinguisticVariant.csv' CSV HEADER;

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

COPY eses12linguisticvariant FROM '/Users/mpatel/Desktop/Loinc_2.71/AccessoryFiles/LinguisticVariants/esES12LinguisticVariant.csv' CSV HEADER;

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

COPY etee10linguisticvariant FROM '/Users/mpatel/Desktop/Loinc_2.71/AccessoryFiles/LinguisticVariants/etEE10LinguisticVariant.csv' CSV HEADER;

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

COPY frbe23linguisticvariant FROM '/Users/mpatel/Desktop/Loinc_2.71/AccessoryFiles/LinguisticVariants/frBE23LinguisticVariant.csv' CSV HEADER;

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

COPY frca8linguisticvariant FROM '/Users/mpatel/Desktop/Loinc_2.71/AccessoryFiles/LinguisticVariants/frCA8LinguisticVariant.csv' CSV HEADER;

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

COPY frfr18linguisticvariant FROM '/Users/mpatel/Desktop/Loinc_2.71/AccessoryFiles/LinguisticVariants/frFR18LinguisticVariant.csv' CSV HEADER;

DROP TABLE IF EXISTS imagingdocumentcodes;
CREATE TABLE imagingdocumentcodes (
loinc_num varchar(255),
long_common_name varchar(255)
);

COPY imagingdocumentcodes FROM '/Users/mpatel/Desktop/Loinc_2.71/AccessoryFiles/ImagingDocuments/ImagingDocumentCodes.csv' CSV HEADER;

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

COPY itit16linguisticvariant FROM '/Users/mpatel/Desktop/Loinc_2.71/AccessoryFiles/LinguisticVariants/itIT16LinguisticVariant.csv' CSV HEADER;

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

COPY kokr13linguisticvariant FROM '/Users/mpatel/Desktop/Loinc_2.71/AccessoryFiles/LinguisticVariants/koKR13LinguisticVariant.csv' CSV HEADER;

DROP TABLE IF EXISTS linguisticvariants;
CREATE TABLE linguisticvariants (
id varchar(255),
iso_language varchar(255),
iso_country varchar(255),
language_name varchar(255),
producer varchar(255)
);

COPY linguisticvariants FROM '/Users/mpatel/Desktop/Loinc_2.71/AccessoryFiles/LinguisticVariants/LinguisticVariants.csv' CSV HEADER;

DROP TABLE IF EXISTS loinc;
CREATE TABLE loinc (
loinc_num varchar(255),
component varchar(255),
property varchar(255),
time_aspct varchar(255),
system varchar(255),
scale_typ varchar(255),
method_typ varchar(255),
class varchar(255),
versionlastchanged varchar(255),
chng_type varchar(255),
definitiondescription text,
status varchar(255),
consumer_name varchar(255),
classtype varchar(255),
formula varchar(255),
exmpl_answers varchar(255),
survey_quest_text varchar(255),
survey_quest_src varchar(255),
unitsrequired varchar(255),
submitted_units varchar(255),
relatednames2 text,
shortname varchar(255),
order_obs varchar(255),
cdisc_common_tests varchar(255),
hl7_field_subfield_id varchar(255),
external_copyright_notice varchar(255),
example_units varchar(255),
long_common_name varchar(255),
unitsandrange varchar(255),
example_ucum_units varchar(255),
example_si_ucum_units varchar(255),
status_reason varchar(255),
status_text text,
change_reason_public text,
common_test_rank varchar(255),
common_order_rank varchar(255),
common_si_test_rank varchar(255),
hl7_attachment_structure varchar(255),
external_copyright_link varchar(255),
paneltype varchar(255),
askatorderentry varchar(255),
associatedobservations varchar(255),
versionfirstreleased varchar(255),
validhl7attachmentrequest varchar(255),
displayname varchar(255),
loinc_num varchar(255),
component varchar(255),
property varchar(255),
time_aspct varchar(255),
system varchar(255),
scale_typ varchar(255),
method_typ varchar(255),
class varchar(255),
versionlastchanged varchar(255),
chng_type varchar(255),
definitiondescription text,
status varchar(255),
consumer_name varchar(255),
classtype varchar(255),
formula varchar(255),
exmpl_answers varchar(255),
survey_quest_text varchar(255),
survey_quest_src varchar(255),
unitsrequired varchar(255),
submitted_units varchar(255),
relatednames2 text,
shortname varchar(255),
order_obs varchar(255),
cdisc_common_tests varchar(255),
hl7_field_subfield_id varchar(255),
external_copyright_notice varchar(255),
example_units varchar(255),
long_common_name varchar(255),
unitsandrange varchar(255),
example_ucum_units varchar(255),
example_si_ucum_units varchar(255),
status_reason varchar(255),
status_text text,
change_reason_public text,
common_test_rank varchar(255),
common_order_rank varchar(255),
common_si_test_rank varchar(255),
hl7_attachment_structure varchar(255),
external_copyright_link varchar(255),
paneltype varchar(255),
askatorderentry varchar(255),
associatedobservations varchar(255),
versionfirstreleased varchar(255),
validhl7attachmentrequest varchar(255),
displayname varchar(255)
);

COPY loinc FROM '/Users/mpatel/Desktop/Loinc_2.71/AccessoryFiles/PanelsAndForms/Loinc.csv' CSV HEADER;

DROP TABLE IF EXISTS loinc;
CREATE TABLE loinc (
loinc_num varchar(255),
component varchar(255),
property varchar(255),
time_aspct varchar(255),
system varchar(255),
scale_typ varchar(255),
method_typ varchar(255),
class varchar(255),
versionlastchanged varchar(255),
chng_type varchar(255),
definitiondescription text,
status varchar(255),
consumer_name varchar(255),
classtype varchar(255),
formula varchar(255),
exmpl_answers varchar(255),
survey_quest_text varchar(255),
survey_quest_src varchar(255),
unitsrequired varchar(255),
submitted_units varchar(255),
relatednames2 text,
shortname varchar(255),
order_obs varchar(255),
cdisc_common_tests varchar(255),
hl7_field_subfield_id varchar(255),
external_copyright_notice varchar(255),
example_units varchar(255),
long_common_name varchar(255),
unitsandrange varchar(255),
example_ucum_units varchar(255),
example_si_ucum_units varchar(255),
status_reason varchar(255),
status_text text,
change_reason_public text,
common_test_rank varchar(255),
common_order_rank varchar(255),
common_si_test_rank varchar(255),
hl7_attachment_structure varchar(255),
external_copyright_link varchar(255),
paneltype varchar(255),
askatorderentry varchar(255),
associatedobservations varchar(255),
versionfirstreleased varchar(255),
validhl7attachmentrequest varchar(255),
displayname varchar(255),
loinc_num varchar(255),
component varchar(255),
property varchar(255),
time_aspct varchar(255),
system varchar(255),
scale_typ varchar(255),
method_typ varchar(255),
class varchar(255),
versionlastchanged varchar(255),
chng_type varchar(255),
definitiondescription text,
status varchar(255),
consumer_name varchar(255),
classtype varchar(255),
formula varchar(255),
exmpl_answers varchar(255),
survey_quest_text varchar(255),
survey_quest_src varchar(255),
unitsrequired varchar(255),
submitted_units varchar(255),
relatednames2 text,
shortname varchar(255),
order_obs varchar(255),
cdisc_common_tests varchar(255),
hl7_field_subfield_id varchar(255),
external_copyright_notice varchar(255),
example_units varchar(255),
long_common_name varchar(255),
unitsandrange varchar(255),
example_ucum_units varchar(255),
example_si_ucum_units varchar(255),
status_reason varchar(255),
status_text text,
change_reason_public text,
common_test_rank varchar(255),
common_order_rank varchar(255),
common_si_test_rank varchar(255),
hl7_attachment_structure varchar(255),
external_copyright_link varchar(255),
paneltype varchar(255),
askatorderentry varchar(255),
associatedobservations varchar(255),
versionfirstreleased varchar(255),
validhl7attachmentrequest varchar(255),
displayname varchar(255)
);

COPY loinc FROM '/Users/mpatel/Desktop/Loinc_2.71/LoincTable/Loinc.csv' CSV HEADER;

DROP TABLE IF EXISTS loincanswerlistlink;
CREATE TABLE loincanswerlistlink (
loincnumber varchar(255),
longcommonname varchar(255),
answerlistid varchar(255),
answerlistname varchar(255),
answerlistlinktype varchar(255),
applicablecontext varchar(255),
loincnumber varchar(255),
longcommonname varchar(255),
answerlistid varchar(255),
answerlistname varchar(255),
answerlistlinktype varchar(255),
applicablecontext varchar(255)
);

COPY loincanswerlistlink FROM '/Users/mpatel/Desktop/Loinc_2.71/AccessoryFiles/AnswerFile/LoincAnswerListLink.csv' CSV HEADER;

DROP TABLE IF EXISTS loincanswerlistlink;
CREATE TABLE loincanswerlistlink (
loincnumber varchar(255),
longcommonname varchar(255),
answerlistid varchar(255),
answerlistname varchar(255),
answerlistlinktype varchar(255),
applicablecontext varchar(255),
loincnumber varchar(255),
longcommonname varchar(255),
answerlistid varchar(255),
answerlistname varchar(255),
answerlistlinktype varchar(255),
applicablecontext varchar(255)
);

COPY loincanswerlistlink FROM '/Users/mpatel/Desktop/Loinc_2.71/AccessoryFiles/PanelsAndForms/LoincAnswerListLink.csv' CSV HEADER;

DROP TABLE IF EXISTS loincchangesnapshot;
CREATE TABLE loincchangesnapshot (
versioneffective varchar(255),
loinc_num varchar(255),
property varchar(255),
valueprior varchar(255),
valuecurrent varchar(255),
changereason varchar(255)
);

COPY loincchangesnapshot FROM '/Users/mpatel/Desktop/Loinc_2.71/AccessoryFiles/ChangeSnapshot/LoincChangeSnapshot.csv' CSV HEADER;

DROP TABLE IF EXISTS loincgroup;
CREATE TABLE loincgroup (
parentloincgroupid varchar(255),
loincgroupid varchar(255),
loincgroup varchar(255),
archetype varchar(255),
status varchar(255),
versionfirstreleased varchar(255)
);

COPY loincgroup FROM '/Users/mpatel/Desktop/Loinc_2.71/AccessoryFiles/GroupFile/Group.csv' CSV HEADER;

DROP TABLE IF EXISTS loincgroupattributes;
CREATE TABLE loincgroupattributes (
parentloincgroupid varchar(255),
loincgroupid varchar(255),
type varchar(255),
value text
);

COPY loincgroupattributes FROM '/Users/mpatel/Desktop/Loinc_2.71/AccessoryFiles/GroupFile/GroupAttributes.csv' CSV HEADER;

DROP TABLE IF EXISTS loincgrouploincterms;
CREATE TABLE loincgrouploincterms (
category varchar(255),
loincgroupid varchar(255),
archetype varchar(255),
loincnumber varchar(255),
longcommonname varchar(255)
);

COPY loincgrouploincterms FROM '/Users/mpatel/Desktop/Loinc_2.71/AccessoryFiles/GroupFile/GroupLoincTerms.csv' CSV HEADER;

DROP TABLE IF EXISTS loincieeemedicaldevicecodemappingtable;
CREATE TABLE loincieeemedicaldevicecodemappingtable (
loinc_num varchar(255),
loinc_long_common_name varchar(255),
ieee_cf_code10 varchar(255),
ieee_refid varchar(255),
equivalence varchar(255)
);

COPY loincieeemedicaldevicecodemappingtable FROM '/Users/mpatel/Desktop/Loinc_2.71/AccessoryFiles/LoincIeeeMedicalDeviceCodeMappingTable/LoincIeeeMedicalDeviceCodeMappingTable.csv' CSV HEADER;

DROP TABLE IF EXISTS loincparentgroup;
CREATE TABLE loincparentgroup (
parentloincgroupid varchar(255),
parentloincgroup varchar(255),
status varchar(255)
);

COPY loincparentgroup FROM '/Users/mpatel/Desktop/Loinc_2.71/AccessoryFiles/GroupFile/ParentGroup.csv' CSV HEADER;

DROP TABLE IF EXISTS loincparentgroupattributes;
CREATE TABLE loincparentgroupattributes (
parentloincgroupid varchar(255),
type varchar(255),
value text
);

COPY loincparentgroupattributes FROM '/Users/mpatel/Desktop/Loinc_2.71/AccessoryFiles/GroupFile/ParentGroupAttributes.csv' CSV HEADER;

DROP TABLE IF EXISTS loincpartlink_primary;
CREATE TABLE loincpartlink_primary (
loincnumber varchar(255),
longcommonname varchar(255),
partnumber varchar(255),
partname varchar(255),
partcodesystem varchar(255),
parttypename varchar(255),
linktypename varchar(255),
property varchar(255)
);

COPY loincpartlink_primary FROM '/Users/mpatel/Desktop/Loinc_2.71/AccessoryFiles/PartFile/LoincPartLink_Primary.csv' CSV HEADER;

DROP TABLE IF EXISTS loincpartlink_supplementary;
CREATE TABLE loincpartlink_supplementary (
loincnumber varchar(255),
longcommonname varchar(255),
partnumber varchar(255),
partname varchar(255),
partcodesystem varchar(255),
parttypename varchar(255),
linktypename varchar(255),
property varchar(255)
);

COPY loincpartlink_supplementary FROM '/Users/mpatel/Desktop/Loinc_2.71/AccessoryFiles/PartFile/LoincPartLink_Supplementary.csv' CSV HEADER;

DROP TABLE IF EXISTS loincrsnaradiologyplaybook;
CREATE TABLE loincrsnaradiologyplaybook (
loincnumber varchar(255),
longcommonname varchar(255),
partnumber varchar(255),
parttypename varchar(255),
partname varchar(255),
partsequenceorder varchar(255),
rid varchar(255),
preferredname varchar(255),
rpid varchar(255),
longname varchar(255)
);

COPY loincrsnaradiologyplaybook FROM '/Users/mpatel/Desktop/Loinc_2.71/AccessoryFiles/LoincRsnaRadiologyPlaybook/LoincRsnaRadiologyPlaybook.csv' CSV HEADER;

DROP TABLE IF EXISTS loinctablecore;
CREATE TABLE loinctablecore (
loinc_num varchar(255),
component varchar(255),
property varchar(255),
time_aspct varchar(255),
system varchar(255),
scale_typ varchar(255),
method_typ varchar(255),
class varchar(255),
classtype varchar(255),
long_common_name varchar(255),
shortname varchar(255),
external_copyright_notice varchar(255),
status varchar(255),
versionfirstreleased varchar(255),
versionlastchanged varchar(255)
);

COPY loinctablecore FROM '/Users/mpatel/Desktop/Loinc_2.71/LoincTableCore/LoincTableCore.csv' CSV HEADER;

DROP TABLE IF EXISTS loincuniversallabordersvalueset;
CREATE TABLE loincuniversallabordersvalueset (
loinc_num varchar(255),
long_common_name varchar(255),
order_obs varchar(255)
);

COPY loincuniversallabordersvalueset FROM '/Users/mpatel/Desktop/Loinc_2.71/AccessoryFiles/LoincUniversalLabOrdersValueSet/LoincUniversalLabOrdersValueSet.csv' CSV HEADER;

DROP TABLE IF EXISTS mapto;
CREATE TABLE mapto (
loinc varchar(255),
map_to varchar(255),
comment varchar(255),
loinc varchar(255),
map_to varchar(255),
comment varchar(255)
);

COPY mapto FROM '/Users/mpatel/Desktop/Loinc_2.71/LoincTable/MapTo.csv' CSV HEADER;

DROP TABLE IF EXISTS mapto;
CREATE TABLE mapto (
loinc varchar(255),
map_to varchar(255),
comment varchar(255),
loinc varchar(255),
map_to varchar(255),
comment varchar(255)
);

COPY mapto FROM '/Users/mpatel/Desktop/Loinc_2.71/LoincTableCore/MapTo.csv' CSV HEADER;

DROP TABLE IF EXISTS multiaxialhierarchy;
CREATE TABLE multiaxialhierarchy (
path_to_root varchar(255),
sequence varchar(255),
immediate_parent varchar(255),
code varchar(255),
code_text varchar(255)
);

COPY multiaxialhierarchy FROM '/Users/mpatel/Desktop/Loinc_2.71/AccessoryFiles/MultiAxialHierarchy/MultiAxialHierarchy.csv' CSV HEADER;

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

COPY nlnl22linguisticvariant FROM '/Users/mpatel/Desktop/Loinc_2.71/AccessoryFiles/LinguisticVariants/nlNL22LinguisticVariant.csv' CSV HEADER;

DROP TABLE IF EXISTS panelsandforms;
CREATE TABLE panelsandforms (
parentid varchar(255),
parentloinc varchar(255),
parentname varchar(255),
id varchar(255),
sequence varchar(255),
loinc varchar(255),
loincname varchar(255),
displaynameforform varchar(255),
observationrequiredinpanel varchar(255),
observationidinform varchar(255),
skiplogichelptext varchar(255),
defaultvalue varchar(255),
entrytype varchar(255),
datatypeinform varchar(255),
datatypesource varchar(255),
answersequenceoverride varchar(255),
conditionforinclusion varchar(255),
allowablealternative varchar(255),
observationcategory varchar(255),
context varchar(255),
consistencychecks text,
relevanceequation varchar(255),
codinginstructions text,
questioncardinality varchar(255),
answercardinality varchar(255),
answerlistidoverride varchar(255),
answerlisttypeoverride varchar(255),
external_copyright_notice text
);

COPY panelsandforms FROM '/Users/mpatel/Desktop/Loinc_2.71/AccessoryFiles/PanelsAndForms/PanelsAndForms.csv' CSV HEADER;

DROP TABLE IF EXISTS part;
CREATE TABLE part (
partnumber varchar(255),
parttypename varchar(255),
partname varchar(255),
partdisplayname varchar(255),
status varchar(255)
);

COPY part FROM '/Users/mpatel/Desktop/Loinc_2.71/AccessoryFiles/PartFile/Part.csv' CSV HEADER;

DROP TABLE IF EXISTS partchangesnapshot;
CREATE TABLE partchangesnapshot (
versioneffective varchar(255),
partnumber varchar(255),
property varchar(255),
valueprior varchar(255),
valuecurrent varchar(255),
changereason varchar(255)
);

COPY partchangesnapshot FROM '/Users/mpatel/Desktop/Loinc_2.71/AccessoryFiles/ChangeSnapshot/PartChangeSnapshot.csv' CSV HEADER;

DROP TABLE IF EXISTS partrelatedcodemapping;
CREATE TABLE partrelatedcodemapping (
partnumber varchar(255),
partname varchar(255),
parttypename varchar(255),
extcodeid varchar(255),
extcodedisplayname varchar(255),
extcodesystem varchar(255),
equivalence varchar(255),
contentorigin varchar(255),
extcodesystemversion varchar(255),
extcodesystemcopyrightnotice text
);

COPY partrelatedcodemapping FROM '/Users/mpatel/Desktop/Loinc_2.71/AccessoryFiles/PartFile/PartRelatedCodeMapping.csv' CSV HEADER;

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

COPY ptbr11linguisticvariant FROM '/Users/mpatel/Desktop/Loinc_2.71/AccessoryFiles/LinguisticVariants/ptBR11LinguisticVariant.csv' CSV HEADER;

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

COPY ruru20linguisticvariant FROM '/Users/mpatel/Desktop/Loinc_2.71/AccessoryFiles/LinguisticVariants/ruRU20LinguisticVariant.csv' CSV HEADER;

DROP TABLE IF EXISTS sourceorganization;
CREATE TABLE sourceorganization (
id varchar(255),
copyright_id varchar(255),
name varchar(255),
copyright text,
terms_of_use text,
url varchar(255)
);

COPY sourceorganization FROM '/Users/mpatel/Desktop/Loinc_2.71/LoincTable/SourceOrganization.csv' CSV HEADER;

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

COPY trtr19linguisticvariant FROM '/Users/mpatel/Desktop/Loinc_2.71/AccessoryFiles/LinguisticVariants/trTR19LinguisticVariant.csv' CSV HEADER;

DROP TABLE IF EXISTS updates;
CREATE TABLE updates (
rectype varchar(255),
loinc_num varchar(255),
component varchar(255),
property varchar(255),
time_aspct varchar(255),
system varchar(255),
scale_typ varchar(255),
method_typ varchar(255),
class varchar(255)
);

COPY updates FROM '/Users/mpatel/Desktop/Loinc_2.71/AccessoryFiles/Updates/Updates.csv' CSV HEADER;

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

COPY zhcn5linguisticvariant FROM '/Users/mpatel/Desktop/Loinc_2.71/AccessoryFiles/LinguisticVariants/zhCN5LinguisticVariant.csv' CSV HEADER;

