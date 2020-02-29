#!/bin/bash

if [ -z "$1" ]
 then
    echo "{" > env.js
    echo "  \"GATEWAY_SERVER\": \"$GATEWAY_SERVER\"," >> env.js
    echo "  \"OAL_ENV\": \"$OAL_ENV\"," >> env.js
    echo "  \"OAL_DB\": \"$OAL_DB\"," >> env.js
    echo "  \"OTE_DIAGRAM_SERVER\": \"$OTE_DIAGRAM_SERVER\"," >> env.js
    echo "  \"FUSION_AUTOMATION\": \"$FUSION_AUTOMATION\"" >> env.js
    echo "}" >> env.js
 else
    echo "{" > env.js
    echo "  \"GATEWAY_SERVER\": \"$1\"," >> env.js
    echo "  \"OAL_ENV\": \"$2\"," >> env.js
    echo "  \"OAL_DB\": \"$3\"," >> env.js
    echo "  \"OTE_DIAGRAM_SERVER\": \"$4\"," >> env.js
    echo "  \"FUSION_AUTOMATION\": \"$5\"" >> env.js
    echo "}" >> env.js
fi