DROP SCHEMA IF EXISTS {schema} CASCADE;
CREATE SCHEMA {schema};
SET search_path TO {schema};
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
score varchar(255)
);

COPY answerlist FROM '{path_to_csvs}/AccessoryFiles/AnswerFile/AnswerList.csv' CSV HEADER;

DROP TABLE IF EXISTS consumername;
CREATE TABLE consumername (
loincnumber varchar(255),
consumername varchar(255)
);

COPY consumername FROM '{path_to_csvs}/AccessoryFiles/ConsumerName/ConsumerName.csv' CSV HEADER;


DROP TABLE IF EXISTS documentontology;
CREATE TABLE documentontology (
loincnumber varchar(255),
partnumber varchar(255),
parttypename varchar(255),
partsequenceorder varchar(255),
partname varchar(255)
);

COPY documentontology FROM '{path_to_csvs}/AccessoryFiles/DocumentOntology/DocumentOntology.csv' CSV HEADER;


DROP TABLE IF EXISTS imagingdocumentcodes;
CREATE TABLE imagingdocumentcodes (
loinc_num varchar(255),
long_common_name varchar(255)
);

COPY imagingdocumentcodes FROM '{path_to_csvs}/AccessoryFiles/ImagingDocuments/ImagingDocumentCodes.csv' CSV HEADER;


DROP TABLE IF EXISTS linguisticvariants;
CREATE TABLE linguisticvariants (
id varchar(255),
iso_language varchar(255),
iso_country varchar(255),
language_name varchar(255),
producer varchar(255)
);

COPY linguisticvariants FROM '{path_to_csvs}/AccessoryFiles/LinguisticVariants/LinguisticVariants.csv' CSV HEADER;

DROP TABLE IF EXISTS panelsandforms;
CREATE TABLE panelsandforms (
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
relatednames2 varchar(255),
shortname varchar(255),
order_obs varchar(255),
hl7_field_subfield_id varchar(255),
external_copyright_notice varchar(255),
example_units varchar(255),
long_common_name varchar(255),
example_ucum_units varchar(255),
status_reason varchar(255),
status_text varchar(255),
change_reason_public varchar(255),
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

COPY panelsandforms FROM '{path_to_csvs}/AccessoryFiles/PanelsAndForms/Loinc.csv' CSV HEADER;

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
formula text,
exmpl_answers text,
survey_quest_text text,
survey_quest_src varchar(255),
unitsrequired varchar(255),
relatednames2 text,
shortname varchar(255),
order_obs varchar(255),
hl7_field_subfield_id varchar(255),
external_copyright_notice text,
example_units varchar(255),
long_common_name varchar(255),
example_ucum_units varchar(255),
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

COPY loinc FROM '{path_to_csvs}/LoincTable/Loinc.csv' CSV HEADER;

DROP TABLE IF EXISTS loincanswerlistlink;
CREATE TABLE loincanswerlistlink (
loincnumber varchar(255),
longcommonname varchar(255),
answerlistid varchar(255),
answerlistname varchar(255),
answerlistlinktype varchar(255),
applicablecontext text
);

COPY loincanswerlistlink FROM '{path_to_csvs}/AccessoryFiles/AnswerFile/LoincAnswerListLink.csv' CSV HEADER;

DROP TABLE IF EXISTS loincanswerlistlink;
CREATE TABLE loincanswerlistlink (
loincnumber varchar(255),
longcommonname varchar(255),
answerlistid varchar(255),
answerlistname varchar(255),
answerlistlinktype varchar(255),
applicablecontext text
);

COPY loincanswerlistlink FROM '{path_to_csvs}/AccessoryFiles/PanelsAndForms/LoincAnswerListLink.csv' CSV HEADER;

DROP TABLE IF EXISTS loincchangesnapshot;
CREATE TABLE loincchangesnapshot (
versioneffective varchar(255),
loinc_num varchar(255),
property varchar(255),
valueprior varchar(255),
valuecurrent varchar(255),
changereason text
);

COPY loincchangesnapshot FROM '{path_to_csvs}/AccessoryFiles/ChangeSnapshot/LoincChangeSnapshot.csv' CSV HEADER;

DROP TABLE IF EXISTS loincgroup;
CREATE TABLE loincgroup (
parentloincgroupid varchar(255),
loincgroupid varchar(255),
loincgroup varchar(255),
archetype varchar(255),
status varchar(255),
versionfirstreleased varchar(255)
);

COPY loincgroup FROM '{path_to_csvs}/AccessoryFiles/GroupFile/Group.csv' CSV HEADER;

DROP TABLE IF EXISTS loincgroupattributes;
CREATE TABLE loincgroupattributes (
parentloincgroupid varchar(255),
loincgroupid varchar(255),
type varchar(255),
value text
);

COPY loincgroupattributes FROM '{path_to_csvs}/AccessoryFiles/GroupFile/GroupAttributes.csv' CSV HEADER;

DROP TABLE IF EXISTS loincgrouploincterms;
CREATE TABLE loincgrouploincterms (
category varchar(255),
loincgroupid varchar(255),
archetype varchar(255),
loincnumber varchar(255),
longcommonname varchar(255)
);

COPY loincgrouploincterms FROM '{path_to_csvs}/AccessoryFiles/GroupFile/GroupLoincTerms.csv' CSV HEADER;

DROP TABLE IF EXISTS loincieeemedicaldevicecodemappingtable;
CREATE TABLE loincieeemedicaldevicecodemappingtable (
loinc_num varchar(255),
loinc_long_common_name varchar(255),
ieee_cf_code10 varchar(255),
ieee_refid varchar(255),
equivalence varchar(255)
);

COPY loincieeemedicaldevicecodemappingtable FROM '{path_to_csvs}/AccessoryFiles/LoincIeeeMedicalDeviceCodeMappingTable/LoincIeeeMedicalDeviceCodeMappingTable.csv' CSV HEADER;

DROP TABLE IF EXISTS loincparentgroup;
CREATE TABLE loincparentgroup (
parentloincgroupid varchar(255),
parentloincgroup varchar(255),
status varchar(255)
);

COPY loincparentgroup FROM '{path_to_csvs}/AccessoryFiles/GroupFile/ParentGroup.csv' CSV HEADER;

DROP TABLE IF EXISTS loincparentgroupattributes;
CREATE TABLE loincparentgroupattributes (
parentloincgroupid varchar(255),
type varchar(255),
value text
);

COPY loincparentgroupattributes FROM '{path_to_csvs}/AccessoryFiles/GroupFile/ParentGroupAttributes.csv' CSV HEADER;

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

COPY loincpartlink_primary FROM '{path_to_csvs}/AccessoryFiles/PartFile/LoincPartLink_Primary.csv' CSV HEADER;

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

COPY loincpartlink_supplementary FROM '{path_to_csvs}/AccessoryFiles/PartFile/LoincPartLink_Supplementary.csv' CSV HEADER;

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

COPY loincrsnaradiologyplaybook FROM '{path_to_csvs}/AccessoryFiles/LoincRsnaRadiologyPlaybook/LoincRsnaRadiologyPlaybook.csv' CSV HEADER;

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
external_copyright_notice text,
status varchar(255),
versionfirstreleased varchar(255),
versionlastchanged varchar(255)
);

COPY loinctablecore FROM '{path_to_csvs}/LoincTableCore/LoincTableCore.csv' CSV HEADER;

DROP TABLE IF EXISTS loincuniversallabordersvalueset;
CREATE TABLE loincuniversallabordersvalueset (
loinc_num varchar(255),
long_common_name varchar(255),
order_obs varchar(255)
);

COPY loincuniversallabordersvalueset FROM '{path_to_csvs}/AccessoryFiles/LoincUniversalLabOrdersValueSet/LoincUniversalLabOrdersValueSet.csv' CSV HEADER;

DROP TABLE IF EXISTS mapto;
CREATE TABLE mapto (
loinc varchar(255),
map_to varchar(255),
comment varchar(255)
);

COPY mapto FROM '{path_to_csvs}/LoincTable/MapTo.csv' CSV HEADER;

DROP TABLE IF EXISTS mapto;
CREATE TABLE mapto (
loinc varchar(255),
map_to varchar(255),
comment varchar(255)
);

COPY mapto FROM '{path_to_csvs}/LoincTableCore/MapTo.csv' CSV HEADER;


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
skiplogichelptext text,
defaultvalue varchar(255),
entrytype varchar(255),
datatypeinform varchar(255),
datatypesource varchar(255),
answersequenceoverride varchar(255),
conditionforinclusion varchar(255),
allowablealternative varchar(255),
observationcategory varchar(255),
context text,
consistencychecks text,
relevanceequation varchar(255),
codinginstructions text,
questioncardinality varchar(255),
answercardinality varchar(255),
answerlistidoverride varchar(255),
answerlisttypeoverride varchar(255),
external_copyright_notice text
);

COPY panelsandforms FROM '{path_to_csvs}/AccessoryFiles/PanelsAndForms/PanelsAndForms.csv' CSV HEADER;

DROP TABLE IF EXISTS part;
CREATE TABLE part (
partnumber varchar(255),
parttypename varchar(255),
partname varchar(255),
partdisplayname varchar(255),
status varchar(255)
);

COPY part FROM '{path_to_csvs}/AccessoryFiles/PartFile/Part.csv' CSV HEADER;

DROP TABLE IF EXISTS partchangesnapshot;
CREATE TABLE partchangesnapshot (
versioneffective varchar(255),
partnumber varchar(255),
property varchar(255),
valueprior varchar(255),
valuecurrent varchar(255),
changereason varchar(255)
);

COPY partchangesnapshot FROM '{path_to_csvs}/AccessoryFiles/ChangeSnapshot/PartChangeSnapshot.csv' CSV HEADER;

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

COPY partrelatedcodemapping FROM '{path_to_csvs}/AccessoryFiles/PartFile/PartRelatedCodeMapping.csv' CSV HEADER;

DROP TABLE IF EXISTS sourceorganization;
CREATE TABLE sourceorganization (
id varchar(255),
copyright_id varchar(255),
name varchar(255),
copyright text,
terms_of_use text,
url varchar(255)
);

COPY sourceorganization FROM '{path_to_csvs}/LoincTable/SourceOrganization.csv' CSV HEADER;


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

COPY updates FROM '{path_to_csvs}/AccessoryFiles/Updates/Updates.csv' CSV HEADER;


--- Replaces multiaxial hierarchy starting version 2.73
DROP TABLE IF EXISTS componenthierarchybysystem;
CREATE TABLE componenthierarchybysystem (
path_to_root varchar(255),
sequence varchar(255),
immediate_parent varchar(255),
code varchar(255),
code_text varchar(255)
);

COPY componenthierarchybysystem FROM '{path_to_csvs}/AccessoryFiles/ComponentHierarchyBySystem/ComponentHierarchyBySystem.csv' CSV HEADER;

-- New tables as of version 2.73
DROP TABLE IF EXISTS loinc_group;
CREATE TABLE loinc_group (
parentgroupid		varchar(255),
groupid		varchar(255),
loinc_group		varchar(255),
archetype		varchar(255),
status		varchar(255),
versionfirstreleased		varchar(255)
)
;

COPY loinc_group FROM '{path_to_csvs}/AccessoryFiles/GroupFile/Group.csv' CSV HEADER;


DROP TABLE IF EXISTS groupattributes;
CREATE TABLE groupattributes (
parentgroupid		varchar(255),
groupid		varchar(255),
type		varchar(255),
value		text
)
;

COPY groupattributes FROM '{path_to_csvs}/AccessoryFiles/GroupFile/GroupAttributes.csv' CSV HEADER;


DROP TABLE IF EXISTS grouploincterms;
CREATE TABLE grouploincterms (
category		varchar(255),
groupid		varchar(255),
archetype		varchar(255),
loincnumber		varchar(255),
longcommonname		text
)
;

COPY grouploincterms FROM '{path_to_csvs}/AccessoryFiles/GroupFile/GroupLoincTerms.csv' CSV HEADER;


DROP TABLE IF EXISTS parentgroup;
CREATE TABLE parentgroup (
parentgroupid		varchar(255),
parentgroup		varchar(255),
status		varchar(255)
)
;

COPY parentgroup FROM '{path_to_csvs}/AccessoryFiles/GroupFile/ParentGroup.csv' CSV HEADER;

DROP TABLE IF EXISTS parentgroupattributes;
CREATE TABLE parentgroupattributes (
parentgroupid		varchar(255),
type		varchar(255),
value		text
)
;

COPY parentgroupattributes FROM '{path_to_csvs}/AccessoryFiles/GroupFile/ParentGroupAttributes.csv' CSV HEADER;

