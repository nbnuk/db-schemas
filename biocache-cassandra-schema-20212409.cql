
CREATE KEYSPACE occ WITH replication = {'class': 'SimpleStrategy', 'replication_factor': '2'}  AND durable_writes = true;

CREATE TABLE occ.loc (
    rowkey text PRIMARY KEY,
    cl text,
    cl1 text,
    cl10 text,
    cl100 text,
    cl1000 text,
    cl101 text,
    cl102 text,
    cl103 text,
    cl104 text,
    cl105 text,
    cl109 text,
    cl11 text,
    cl110 text,
    cl111 text,
    cl112 text,
    cl113 text,
    cl114 text,
    cl115 text,
    cl116 text,
    cl117 text,
    cl118 text,
    cl119 text,
    cl12 text,
    cl120 text,
    cl121 text,
    cl122 text,
    cl123 text,
    cl124 text,
    cl125 text,
    cl126 text,
    cl127 text,
    cl128 text,
    cl129 text,
    cl13 text,
    cl130 text,
    cl131 text,
    cl132 text,
    cl133 text,
    cl134 text,
    cl135 text,
    cl136 text,
    cl137 text,
    cl138 text,
    cl139 text,
    cl14 text,
    cl140 text,
    cl141 text,
    cl142 text,
    cl143 text,
    cl144 text,
    cl145 text,
    cl146 text,
    cl147 text,
    cl148 text,
    cl149 text,
    cl15 text,
    cl150 text,
    cl151 text,
    cl152 text,
    cl153 text,
    cl154 text,
    cl155 text,
    cl156 text,
    cl157 text,
    cl158 text,
    cl159 text,
    cl16 text,
    cl160 text,
    cl161 text,
    cl162 text,
    cl163 text,
    cl164 text,
    cl165 text,
    cl166 text,
    cl167 text,
    cl168 text,
    cl169 text,
    cl170 text,
    cl171 text,
    cl172 text,
    cl173 text,
    cl174 text,
    cl175 text,
    cl176 text,
    cl177 text,
    cl178 text,
    cl179 text,
    cl18 text,
    cl180 text,
    cl181 text,
    cl182 text,
    cl183 text,
    cl184 text,
    cl185 text,
    cl186 text,
    cl187 text,
    cl188 text,
    cl189 text,
    cl190 text,
    cl191 text,
    cl192 text,
    cl193 text,
    cl194 text,
    cl195 text,
    cl196 text,
    cl197 text,
    cl198 text,
    cl199 text,
    cl2 text,
    cl20 text,
    cl200 text,
    cl201 text,
    cl202 text,
    cl203 text,
    cl204 text,
    cl205 text,
    cl206 text,
    cl207 text,
    cl208 text,
    cl209 text,
    cl21 text,
    cl210 text,
    cl211 text,
    cl212 text,
    cl213 text,
    cl214 text,
    cl215 text,
    cl216 text,
    cl217 text,
    cl218 text,
    cl219 text,
    cl220 text,
    cl221 text,
    cl222 text,
    cl223 text,
    cl224 text,
    cl225 text,
    cl226 text,
    cl227 text,
    cl228 text,
    cl23 text,
    cl232 text,
    cl233 text,
    cl234 text,
    cl235 text,
    cl236 text,
    cl237 text,
    cl238 text,
    cl239 text,
    cl24 text,
    cl240 text,
    cl241 text,
    cl242 text,
    cl243 text,
    cl244 text,
    cl247 text,
    cl248 text,
    cl249 text,
    cl25 text,
    cl250 text,
    cl251 text,
    cl252 text,
    cl253 text,
    cl254 text,
    cl255 text,
    cl256 text,
    cl257 text,
    cl258 text,
    cl259 text,
    cl26 text,
    cl260 text,
    cl261 text,
    cl262 text,
    cl263 text,
    cl264 text,
    cl265 text,
    cl266 text,
    cl267 text,
    cl268 text,
    cl269 text,
    cl27 text,
    cl270 text,
    cl271 text,
    cl273 text,
    cl275 text,
    cl276 text,
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

CREATE TABLE occ.qa (
    rowkey text,
    code text,
    userid text,
    relateduuid text,
    comment text,
    created text,
    name text,
    problemasserted text,
    qastatus text,
    referencerowkey text,
    snapshot text,
    userdisplayname text,
    useremail text,
    userentityname text,
    userentityuid text,
    userrole text,
    uuid text,
    value text,
    PRIMARY KEY (rowkey, code, userid, relateduuid)
) WITH CLUSTERING ORDER BY (code ASC, userid ASC, relateduuid ASC)
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
    collectionid_p text,
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
    datasetname_p text,
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
    el text,
    el_p text,
    endday text,
    endday_p text,
    enddayofyear text,
    endmonth text,
    endmonth_p text,
    endyear text,
    endyear_p text,
    establishmentmeans text,
    establishmentmeans_p text,
    establishmentmeanstaxon_p text,
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
    generalisationinmetres text,
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
    gridreference_p text,
    gridreferencewkt text,
    gridreferencewkt_p text,
    gridsizeinmeters text,
    gridsizeinmeters_p text,
    group text,
    habitat text,
    habitat_p text,
    habitattaxon_p text,
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
    nomenclaturalstatus_p text,
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
    organismstatus text,
    originaldecimallatitude text,
    originaldecimallongitude text,
    originalnameusage text,
    originalnameusageid text,
    originalsensitivevalues text,
    othercatalognumbers text,
    outlierforlayers text,
    outlierforlayers_p text,
    ownerinstitutioncode text,
    ownerinstitutioncode_p text,
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
    scientificnameauthorship_p text,
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
    vitality text,
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
    AND gc_grace_seconds = 864000
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
    rowkey text PRIMARY KEY,
    customindexfields text
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

