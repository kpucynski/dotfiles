#!/usr/bin/env bash

set -x
set -e

# values have to be the same as in current Record Set

ACTION=$1
HOSTED_ZONE_ID=$2
DNS_NAME=$3
RECORD_TYPE=$4
TTL=$5
RESOURCE_VALUE=$6

JSON_FILE=`mktemp`

cat > "${JSON_FILE}" <<EOF
{
    "Comment": "$ACTION single record set",
    "Changes": [
        {
            "Action": "$ACTION",
            "ResourceRecordSet": {
                "Name": "$DNS_NAME.",
                "Type": "$RECORD_TYPE",
                "TTL": $TTL,
                "ResourceRecords": [
                    {
                        "Value": "${RESOURCE_VALUE}"
                    }
                ]                
            }
        }
    ]
}
EOF

aws route53 change-resource-record-sets --hosted-zone-id ${HOSTED_ZONE_ID} --change-batch file://"${JSON_FILE}"
