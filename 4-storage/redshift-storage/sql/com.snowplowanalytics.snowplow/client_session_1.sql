-- AUTO-GENERATED BY iglu-utils DO NOT EDIT",
-- Generator: iglu-utils 0.1.0-M1,
-- Generated: 2015-07-22 23:34

-- EDITED BY Alex Dean

-- Source: iglu:com.snowplowanalytics.snowplow/client_session/jsonschema/1-0-0

CREATE TABLE IF NOT EXISTS atomic.com_snowplowanalytics_snowplow_client_session_1 (
    "schema_vendor"       VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "schema_name"         VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "schema_format"       VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "schema_version"      VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "root_id"             CHAR(36)      ENCODE RAW       NOT NULL,
    "root_tstamp"         TIMESTAMP     ENCODE RAW       NOT NULL,
    "ref_root"            VARCHAR(255)  ENCODE RUNLENGTH NOT NULL,
    "ref_tree"            VARCHAR(1500) ENCODE RUNLENGTH NOT NULL,
    "ref_parent"          VARCHAR(255)  ENCODE RUNLENGTH NOT NULL,
    "session_id"          CHAR(36)                       NOT NULL,
    "session_index"       INT                            NOT NULL,
    "storage_mechanism"   VARCHAR(13)                    NOT NULL,
    "user_id"             VARCHAR(36)                    NOT NULL,
    "previous_session_id" CHAR(36),
FOREIGN KEY (root_id) REFERENCES atomic.events(event_id)
)
DISTSTYLE KEY
DISTKEY (root_id)
SORTKEY (root_tstamp);