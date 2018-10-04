CREATE KEYSPACE occ WITH replication = {'class': 'SimpleStrategy', 'replication_factor': '2'}  AND durable_writes = true;

CREATE TABLE occ.loc (
    rowkey text PRIMARY KEY,
    cl text,
    cl1 text,
    cl10 text,
    cl100 text,
    cl101 text,
    cl102 text,
    cl103 text,
    cl104 text,
    cl105 text,
    cl109 text,
    cl11 text,
    cl110 text,
    cl12 text,
    cl13 text,
    cl14 text,
    cl15 text,
    cl16 text,
    cl18 text,
    cl2 text,
    cl20 text,
    cl21 text,
    cl23 text,
    cl24 text,
    cl25 text,
    cl26 text,
    cl27 text,
    cl28 text,
    cl29 text,
    cl3 text,
    cl33 text,
    cl35 text,
    cl36 text,
    cl37 text,
    cl39 text,
    cl4 text,
    cl47 text,
    cl49 text,
    cl5 text,
    cl50 text,
    cl51 text,
    cl52 text,
    cl53 text,
    cl54 text,
    cl55 text,
    cl56 text,
    cl57 text,
    cl58 text,
    cl59 text,
    cl6 text,
    cl60 text,
    cl62 text,
    cl63 text,
    cl64 text,
    cl65 text,
    cl67 text,
    cl68 text,
    cl69 text,
    cl7 text,
    cl70 text,
    cl71 text,
    cl72 text,
    cl74 text,
    cl76 text,
    cl8 text,
    cl84 text,
    cl85 text,
    cl86 text,
    cl87 text,
    cl88 text,
    cl89 text,
    cl9 text,
    cl90 text,
    cl91 text,
    cl92 text,
    cl93 text,
    cl94 text,
    cl95 text,
    cl96 text,
    cl97 text,
    cl98 text,
    cl99 text,
    decimallatitude text,
    decimallongitude text,
    el text,
    lat text,
    lon text
) WITH bloom_filter_fp_chance = 0.01
    AND caching = {'keys': 'ALL', 'rows_per_partition': 'NONE'}
    AND comment = ''
    AND compaction = {'class': 'org.apache.cassandra.db.compaction.LeveledCompactionStrategy'}
    AND compression = {'chunk_length_in_kb': '64', 'class': 'org.apache.cassandra.io.compress.LZ4Compressor'}
    AND crc_check_chance = 1.0
    AND dclocal_read_repair_chance = 0.1
    AND default_time_to_live = 0
    AND gc_grace_seconds = 864000
    AND max_index_interval = 2048
    AND memtable_flush_period_in_ms = 0
    AND min_index_interval = 128
    AND read_repair_chance = 0.0
    AND speculative_retry = '99PERCENTILE';

CREATE TABLE occ.distribution_outliers (
    rowkey text PRIMARY KEY
) WITH bloom_filter_fp_chance = 0.01
    AND caching = {'keys': 'ALL', 'rows_per_partition': 'NONE'}
    AND comment = ''
    AND compaction = {'class': 'org.apache.cassandra.db.compaction.LeveledCompactionStrategy'}
    AND compression = {'chunk_length_in_kb': '64', 'class': 'org.apache.cassandra.io.compress.LZ4Compressor'}
    AND crc_check_chance = 1.0
    AND dclocal_read_repair_chance = 0.1
    AND default_time_to_live = 0
    AND gc_grace_seconds = 864000
    AND max_index_interval = 2048
    AND memtable_flush_period_in_ms = 0
    AND min_index_interval = 128
    AND read_repair_chance = 0.0
    AND speculative_retry = '99PERCENTILE';

CREATE TABLE occ.attr (
    rowkey text PRIMARY KEY,
    citation text,
    collectionname text,
    collectionuid text,
    datahubname text,
    datahubuid text,
    dataprovidername text,
    dataprovideruid text,
    dataresourcename text,
    dataresourceuid text,
    defaultdwcvalues text,
    institutionname text,
    institutionuid text,
    provenance text,
    taxonomichints text
) WITH bloom_filter_fp_chance = 0.01
    AND caching = {'keys': 'ALL', 'rows_per_partition': 'NONE'}
    AND comment = ''
    AND compaction = {'class': 'org.apache.cassandra.db.compaction.LeveledCompactionStrategy'}
    AND compression = {'chunk_length_in_kb': '64', 'class': 'org.apache.cassandra.io.compress.LZ4Compressor'}
    AND crc_check_chance = 1.0
    AND dclocal_read_repair_chance = 0.1
    AND default_time_to_live = 0
    AND gc_grace_seconds = 864000
    AND max_index_interval = 2048
    AND memtable_flush_period_in_ms = 0
    AND min_index_interval = 128
    AND read_repair_chance = 0.0
    AND speculative_retry = '99PERCENTILE';

CREATE TABLE occ.duplicates (
    rowkey text PRIMARY KEY,
    ddlastrun text,
    value text
) WITH bloom_filter_fp_chance = 0.01
    AND caching = {'keys': 'ALL', 'rows_per_partition': 'NONE'}
    AND comment = ''
    AND compaction = {'class': 'org.apache.cassandra.db.compaction.LeveledCompactionStrategy'}
    AND compression = {'chunk_length_in_kb': '64', 'class': 'org.apache.cassandra.io.compress.LZ4Compressor'}
    AND crc_check_chance = 1.0
    AND dclocal_read_repair_chance = 0.1
    AND default_time_to_live = 0
    AND gc_grace_seconds = 864000
    AND max_index_interval = 2048
    AND memtable_flush_period_in_ms = 0
    AND min_index_interval = 128
    AND read_repair_chance = 0.0
    AND speculative_retry = '99PERCENTILE';

CREATE TABLE occ.qa (
    rowkey text,
    code text,
    userid text,
    comment text,
    created text,
    name text,
    problemasserted text,
    qastatus text,
    referencerowkey text,
    relateduuid text,
    snapshot text,
    userdisplayname text,
    useremail text,
    userentityname text,
    userentityuid text,
    userrole text,
    uuid text,
    value text,
    PRIMARY KEY (rowkey, code, userid, relateduuid)
) WITH CLUSTERING ORDER BY (code ASC, userid ASC)
    AND bloom_filter_fp_chance = 0.01
    AND caching = {'keys': 'ALL', 'rows_per_partition': 'NONE'}
    AND comment = ''
    AND compaction = {'class': 'org.apache.cassandra.db.compaction.LeveledCompactionStrategy'}
    AND compression = {'chunk_length_in_kb': '64', 'class': 'org.apache.cassandra.io.compress.LZ4Compressor'}
    AND crc_check_chance = 1.0
    AND dclocal_read_repair_chance = 0.1
    AND default_time_to_live = 0
    AND gc_grace_seconds = 864000
    AND max_index_interval = 2048
    AND memtable_flush_period_in_ms = 0
    AND min_index_interval = 128
    AND read_repair_chance = 0.0
    AND speculative_retry = '99PERCENTILE';

CREATE TABLE occ.occ (
    rowkey text PRIMARY KEY,
    abcdidentificationqualifier_p text,
    acceptednameusage text,
    acceptednameusageid text,
    accessrights text,
    aphiaid text,
    associatedmedia text,
    associatedoccurrences text,
    associatedoccurrences_p text,
    associatedorganisms text,
    associatedreferences text,
    associatedsequences text,
    associatedtaxa text,
    attr_qa text,
    australianherbariumregion text,
    basisofrecord text,
    basisofrecord_p text,
    bbox text,
    bbox_p text,
    bed text,
    behavior text,
    bibliographiccitation text,
    biome text,
    biome_p text,
    bioorder text,
    bor_qa text,
    catalognumber text,
    citation text,
    cl_p text,
    class_qa text,
    classid text,
    classid_p text,
    classs text,
    classs_p text,
    collectioncode text,
    collectioncode_p text,
    collectionid text,
    collectionname text,
    collectionname_p text,
    collectionuid text,
    collectionuid_p text,
    collectorfieldnumber text,
    continent text,
    coordinateprecision text,
    coordinateprecision_p text,
    coordinateuncertaintyinmeters text,
    coordinateuncertaintyinmeters_p text,
    country text,
    country_p text,
    countrycode text,
    countrycode_p text,
    countryconservation text,
    countryconservation_p text,
    county text,
    cultivarname text,
    cultivated text,
    datageneralizations text,
    datageneralizations_p text,
    datahub_p text,
    datahubname text,
    datahubuid text,
    datahubuid_p text,
    dataprovidername text,
    dataprovidername_p text,
    dataprovideruid text,
    dataprovideruid_p text,
    dataresourcename text,
    dataresourcename_p text,
    dataresourceuid text,
    datasetid text,
    datasetname text,
    datedeleted text,
    dateidentified text,
    dateidentified_p text,
    dateprecision text,
    dateprecision_p text,
    day text,
    day_p text,
    decimallatitude text,
    decimallatitude_p text,
    decimallongitude text,
    decimallongitude_p text,
    default_qa text,
    defaultvaluesused text,
    deleted text,
    disposition text,
    distanceoutsideexpertrange_p text,
    duplicates text,
    duplicates_qa text,
    duplicatesoriginalinstitutionid text,
    duplicatesoriginalunitid text,
    duplicationstatus text,
    duplicationstatus_p text,
    duplicationtype text,
    duplicationtype_p text,
    dynamicproperties text,
    earliestageorloweststage text,
    earliesteonorlowesteonothem text,
    earliestepochorlowestseries text,
    earliesteraorlowesterathem text,
    earliestperiodorlowestsystem text,
    easting text,
    easting_p text,
    el_p text,
    endday_p text,
    enddayofyear text,
    endmonth_p text,
    endyear text,
    endyear_p text,
    establishmentmeans text,
    establishmentmeans_p text,
    event_qa text,
    eventattributes text,
    eventdate text,
    eventdate_p text,
    eventdateend text,
    eventdateend_p text,
    eventid text,
    eventremarks text,
    eventtime text,
    family text,
    family_p text,
    familyid text,
    familyid_p text,
    fieldnotes text,
    fieldnumber text,
    firstloaded text,
    footprintspatialfit text,
    footprintsrs text,
    footprintwkt text,
    formation text,
    generalisationtoapplyinmetres text,
    generalisedlocality text,
    generalisedmeters text,
    genus text,
    genus_p text,
    genusid text,
    genusid_p text,
    geodeticdatum text,
    geodeticdatum_p text,
    geologicalcontextid text,
    georeferencedby text,
    georeferencedby_p text,
    georeferenceddate text,
    georeferenceddate_p text,
    georeferenceprotocol text,
    georeferenceprotocol_p text,
    georeferenceremarks text,
    georeferencesources text,
    georeferencesources_p text,
    georeferenceverificationstatus text,
    georeferenceverificationstatus_p text,
    geospatialissue text,
    geospatiallykosher text,
    globalconservation text,
    gridreference text,
    group text,
    habitat text,
    habitat_p text,
    higherclassification text,
    highergeography text,
    highergeographyid text,
    highestbiostratigraphiczone text,
    identification_qa text,
    identificationid text,
    identificationqualifier text,
    identificationqualifier_p text,
    identificationqualifierprocessor_qa text,
    identificationreferences text,
    identificationreferences_p text,
    identificationremarks text,
    identificationverificationstatus text,
    identificationverificationstatus_p text,
    identifiedby text,
    identifiedby_p text,
    identifier text,
    identifierby text,
    identifierrole text,
    image_qa text,
    images text,
    images_p text,
    individualcount text,
    individualid text,
    informationwithheld text,
    informationwithheld_p text,
    infraspecificepithet text,
    infraspecificmarker text,
    institutioncode text,
    institutioncode_p text,
    institutionid text,
    institutionname text,
    institutionname_p text,
    institutionuid text,
    institutionuid_p text,
    interactions text,
    interactions_p text,
    island text,
    islandgroup text,
    kingdom text,
    kingdom_p text,
    kingdomid text,
    kingdomid_p text,
    language text,
    lastmodifiedtime text,
    lastmodifiedtime_p text,
    lastuserassertiondate text,
    latestageorhigheststage text,
    latesteonorhighesteonothem text,
    latestepochorhighestseries text,
    latesteraorhighesterathem text,
    latestperiodorhighestsystem text,
    left_p text,
    lga_p text,
    license text,
    license_p text,
    lifestage text,
    lithostratigraphicterms text,
    loandate text,
    loandestination text,
    loanforbotanist text,
    loanidentifier text,
    loanreturndate text,
    loansequencenumber text,
    loc_qa text,
    locality text,
    locality_p text,
    locationaccordingto text,
    locationattributes text,
    locationdetermined text,
    locationid text,
    locationremarks text,
    lowestbiostratigraphiczone text,
    materialsampleid text,
    maximumdepthinmeters text,
    maximumdepthinmeters_p text,
    maximumdistanceabovesurfaceinmeters text,
    maximumelevationinmeters text,
    maximumelevationinmeters_p text,
    measurementaccuracy text,
    measurementdeterminedby text,
    measurementdetermineddate text,
    measurementid text,
    measurementmethod text,
    measurementremarks text,
    measurementtype text,
    measurementunit text,
    measurementvalue text,
    member text,
    minimumdepthinmeters text,
    minimumdepthinmeters_p text,
    minimumdistanceabovesurfaceinmeters text,
    minimumelevationinmeters text,
    minimumelevationinmeters_p text,
    miscproperties text,
    modified text,
    modified_p text,
    month text,
    month_p text,
    municipality text,
    nameaccordingto text,
    nameaccordingto_p text,
    nameaccordingtoid text,
    namematchmetric_p text,
    nameparsetype text,
    nameparsetype_p text,
    namepublishedin text,
    namepublishedinid text,
    namepublishedinyear text,
    naturaloccurrence text,
    nearnamedplacerelationto text,
    nomenclaturalcode text,
    nomenclaturalcode_p text,
    nomenclaturalstatus text,
    northing text,
    northing_p text,
    occurrenceattributes text,
    occurrencedetails text,
    occurrenceid text,
    occurrenceremarks text,
    occurrencestatus text,
    occurrencestatus_p text,
    offline_qa text,
    order_p text,
    orderid text,
    orderid_p text,
    organismid text,
    organismname text,
    organismquantity text,
    organismquantitytype text,
    organismremarks text,
    organismscope text,
    originaldecimallatitude text,
    originaldecimallongitude text,
    originalnameusage text,
    originalnameusageid text,
    originalsensitivevalues text,
    othercatalognumbers text,
    outlierforlayers text,
    outlierforlayers_p text,
    ownerinstitutioncode text,
    parenteventid text,
    parentnameusage text,
    parentnameusageid text,
    phenology text,
    photographer text,
    photopageurl text,
    phylum text,
    phylum_p text,
    phylumid text,
    phylumid_p text,
    pointradiusspatialfit text,
    preferredflag text,
    preparations text,
    previousidentifications text,
    provenance text,
    provenance_p text,
    qualityassertion text,
    queryassertions_p text,
    recordedby text,
    recordedby_p text,
    recordnumber text,
    references text,
    relatedresourceid text,
    relationshipaccordingto text,
    relationshipestablisheddate text,
    relationshipofresource text,
    relationshipremarks text,
    reprocessing_qa text,
    reproductivecondition text,
    resourceid text,
    resourcerelationshipid text,
    right_p text,
    rights text,
    rightsholder text,
    samplesizeunit text,
    samplesizevalue text,
    samplingeffort text,
    samplingprotocol text,
    samplingprotocol_p text,
    scientificname text,
    scientificname_p text,
    scientificnameaddendum text,
    scientificnameauthorship text,
    scientificnameid text,
    scientificnamewithoutauthor text,
    secondarycollectors text,
    sensitive_qa text,
    sex text,
    sounds text,
    sounds_p text,
    source text,
    species text,
    species_p text,
    speciesgroups text,
    speciesgroups_p text,
    specieshabitats text,
    specieshabitats_p text,
    speciesid text,
    speciesid_p text,
    specificepithet text,
    startdayofyear text,
    startyear text,
    state text,
    stateconservation text,
    stateconservation_p text,
    stateprovince text,
    stateprovince_p text,
    subfamily text,
    subgenus text,
    subgenusid text,
    subspecies text,
    subspecies_p text,
    subspeciesid text,
    subspeciesid_p text,
    superfamily text,
    taxonconceptid text,
    taxonconceptid_p text,
    taxonid text,
    taxonomicallykosher text,
    taxonomicissue text,
    taxonomicissue_p text,
    taxonomicstatus text,
    taxonrank text,
    taxonrank_p text,
    taxonrankid text,
    taxonrankid_p text,
    taxonremarks text,
    type text,
    type_qa text,
    typestatus text,
    typestatus_p text,
    typestatusqualifier text,
    typifiedname text,
    userassertionstatus text,
    userid text,
    userid_p text,
    userqualityassertion text,
    userverified text,
    validdistribution text,
    verbatimcoordinates text,
    verbatimcoordinatesystem text,
    verbatimdateidentified text,
    verbatimdepth text,
    verbatimdepth_p text,
    verbatimelevation text,
    verbatimelevation_p text,
    verbatimeventdate text,
    verbatimlatitude text,
    verbatimlocality text,
    verbatimlongitude text,
    verbatimsrs text,
    verbatimtaxonrank text,
    verificationdate text,
    verificationnotes text,
    verifier text,
    vernacularname text,
    vernacularname_p text,
    videos text,
    videos_p text,
    waterbody text,
    year text,
    year_p text,
    zone text
) WITH bloom_filter_fp_chance = 0.01
    AND caching = {'keys': 'ALL', 'rows_per_partition': 'NONE'}
    AND comment = ''
    AND compaction = {'class': 'org.apache.cassandra.db.compaction.LeveledCompactionStrategy'}
    AND compression = {'chunk_length_in_kb': '64', 'class': 'org.apache.cassandra.io.compress.LZ4Compressor'}
    AND crc_check_chance = 1.0
    AND dclocal_read_repair_chance = 0.1
    AND default_time_to_live = 0
    AND gc_grace_seconds = 0
    AND max_index_interval = 2048
    AND memtable_flush_period_in_ms = 0
    AND min_index_interval = 128
    AND read_repair_chance = 0.0
    AND speculative_retry = '99PERCENTILE';

CREATE TABLE occ.queryassert (
    rowkey text PRIMARY KEY
) WITH bloom_filter_fp_chance = 0.01
    AND caching = {'keys': 'ALL', 'rows_per_partition': 'NONE'}
    AND comment = ''
    AND compaction = {'class': 'org.apache.cassandra.db.compaction.LeveledCompactionStrategy'}
    AND compression = {'chunk_length_in_kb': '64', 'class': 'org.apache.cassandra.io.compress.LZ4Compressor'}
    AND crc_check_chance = 1.0
    AND dclocal_read_repair_chance = 0.1
    AND default_time_to_live = 0
    AND gc_grace_seconds = 864000
    AND max_index_interval = 2048
    AND memtable_flush_period_in_ms = 0
    AND min_index_interval = 128
    AND read_repair_chance = 0.0
    AND speculative_retry = '99PERCENTILE';

CREATE TABLE occ.taxon (
    rowkey text PRIMARY KEY,
    commonname text,
    conservation text,
    habitats text
) WITH bloom_filter_fp_chance = 0.01
    AND caching = {'keys': 'ALL', 'rows_per_partition': 'NONE'}
    AND comment = ''
    AND compaction = {'class': 'org.apache.cassandra.db.compaction.LeveledCompactionStrategy'}
    AND compression = {'chunk_length_in_kb': '64', 'class': 'org.apache.cassandra.io.compress.LZ4Compressor'}
    AND crc_check_chance = 1.0
    AND dclocal_read_repair_chance = 0.1
    AND default_time_to_live = 0
    AND gc_grace_seconds = 864000
    AND max_index_interval = 2048
    AND memtable_flush_period_in_ms = 0
    AND min_index_interval = 128
    AND read_repair_chance = 0.0
    AND speculative_retry = '99PERCENTILE';

CREATE TABLE occ.upload (
    rowkey text PRIMARY KEY
) WITH bloom_filter_fp_chance = 0.01
    AND caching = {'keys': 'ALL', 'rows_per_partition': 'NONE'}
    AND comment = ''
    AND compaction = {'class': 'org.apache.cassandra.db.compaction.LeveledCompactionStrategy'}
    AND compression = {'chunk_length_in_kb': '64', 'class': 'org.apache.cassandra.io.compress.LZ4Compressor'}
    AND crc_check_chance = 1.0
    AND dclocal_read_repair_chance = 0.1
    AND default_time_to_live = 0
    AND gc_grace_seconds = 864000
    AND max_index_interval = 2048
    AND memtable_flush_period_in_ms = 0
    AND min_index_interval = 128
    AND read_repair_chance = 0.0
    AND speculative_retry = '99PERCENTILE';

CREATE TABLE occ.occ_duplicates (
    rowkey text PRIMARY KEY,
    value text
) WITH bloom_filter_fp_chance = 0.01
    AND caching = {'keys': 'ALL', 'rows_per_partition': 'NONE'}
    AND comment = ''
    AND compaction = {'class': 'org.apache.cassandra.db.compaction.LeveledCompactionStrategy'}
    AND compression = {'chunk_length_in_kb': '64', 'class': 'org.apache.cassandra.io.compress.LZ4Compressor'}
    AND crc_check_chance = 1.0
    AND dclocal_read_repair_chance = 0.1
    AND default_time_to_live = 0
    AND gc_grace_seconds = 864000
    AND max_index_interval = 2048
    AND memtable_flush_period_in_ms = 0
    AND min_index_interval = 128
    AND read_repair_chance = 0.0
    AND speculative_retry = '99PERCENTILE';

CREATE TABLE occ.occ_outliers (
    rowkey text PRIMARY KEY,
    jackknife text
) WITH bloom_filter_fp_chance = 0.01
    AND caching = {'keys': 'ALL', 'rows_per_partition': 'NONE'}
    AND comment = ''
    AND compaction = {'class': 'org.apache.cassandra.db.compaction.LeveledCompactionStrategy'}
    AND compression = {'chunk_length_in_kb': '64', 'class': 'org.apache.cassandra.io.compress.LZ4Compressor'}
    AND crc_check_chance = 1.0
    AND dclocal_read_repair_chance = 0.1
    AND default_time_to_live = 0
    AND gc_grace_seconds = 864000
    AND max_index_interval = 2048
    AND memtable_flush_period_in_ms = 0
    AND min_index_interval = 128
    AND read_repair_chance = 0.0
    AND speculative_retry = '99PERCENTILE';

CREATE TABLE occ.occ_uuid (
    rowkey text PRIMARY KEY,
    value text
) WITH bloom_filter_fp_chance = 0.01
    AND caching = {'keys': 'ALL', 'rows_per_partition': 'NONE'}
    AND comment = ''
    AND compaction = {'class': 'org.apache.cassandra.db.compaction.LeveledCompactionStrategy'}
    AND compression = {'chunk_length_in_kb': '64', 'class': 'org.apache.cassandra.io.compress.LZ4Compressor'}
    AND crc_check_chance = 1.0
    AND dclocal_read_repair_chance = 0.1
    AND default_time_to_live = 0
    AND gc_grace_seconds = 864000
    AND max_index_interval = 2048
    AND memtable_flush_period_in_ms = 0
    AND min_index_interval = 128
    AND read_repair_chance = 0.0
    AND speculative_retry = '99PERCENTILE';

CREATE TABLE occ.qid (
    rowkey text PRIMARY KEY,
    bbox text,
    displaystring text,
    fqs text,
    lastuse text,
    maxage text,
    q text,
    source text,
    wkt text
) WITH bloom_filter_fp_chance = 0.01
    AND caching = {'keys': 'ALL', 'rows_per_partition': 'NONE'}
    AND comment = ''
    AND compaction = {'class': 'org.apache.cassandra.db.compaction.LeveledCompactionStrategy'}
    AND compression = {'chunk_length_in_kb': '64', 'class': 'org.apache.cassandra.io.compress.LZ4Compressor'}
    AND crc_check_chance = 1.0
    AND dclocal_read_repair_chance = 0.1
    AND default_time_to_live = 0
    AND gc_grace_seconds = 864000
    AND max_index_interval = 2048
    AND memtable_flush_period_in_ms = 0
    AND min_index_interval = 128
    AND read_repair_chance = 0.0
    AND speculative_retry = '99PERCENTILE';

CREATE TABLE occ.outliers (
    rowkey text PRIMARY KEY,
    jackknifeoutliers text,
    jackknifestats text
) WITH bloom_filter_fp_chance = 0.01
    AND caching = {'keys': 'ALL', 'rows_per_partition': 'NONE'}
    AND comment = ''
    AND compaction = {'class': 'org.apache.cassandra.db.compaction.LeveledCompactionStrategy'}
    AND compression = {'chunk_length_in_kb': '64', 'class': 'org.apache.cassandra.io.compress.LZ4Compressor'}
    AND crc_check_chance = 1.0
    AND dclocal_read_repair_chance = 0.1
    AND default_time_to_live = 0
    AND gc_grace_seconds = 864000
    AND max_index_interval = 2048
    AND memtable_flush_period_in_ms = 0
    AND min_index_interval = 128
    AND read_repair_chance = 0.0
    AND speculative_retry = '99PERCENTILE';

CREATE TABLE occ.dellog (
    rowkey text PRIMARY KEY,
    id text,
    value text
) WITH bloom_filter_fp_chance = 0.01
    AND caching = {'keys': 'ALL', 'rows_per_partition': 'NONE'}
    AND comment = ''
    AND compaction = {'class': 'org.apache.cassandra.db.compaction.LeveledCompactionStrategy'}
    AND compression = {'chunk_length_in_kb': '64', 'class': 'org.apache.cassandra.io.compress.LZ4Compressor'}
    AND crc_check_chance = 1.0
    AND dclocal_read_repair_chance = 0.1
    AND default_time_to_live = 0
    AND gc_grace_seconds = 864000
    AND max_index_interval = 2048
    AND memtable_flush_period_in_ms = 0
    AND min_index_interval = 128
    AND read_repair_chance = 0.0
    AND speculative_retry = '99PERCENTILE';