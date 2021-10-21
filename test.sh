#!/bin/bash
for i in 1 2 3
do
    TITLE=$(petname -w 3)
    mkdir ./content/blog/$TITLE
    touch ./content/blog/$TITLE/index.md
    cat > ./content/blog/$TITLE/index.md << EOF
---
title: "$TITLE"
date: "$(date +%FT%TZ)"
description: "test article number $i"
categories: [paragraph]
comments: true
---

$TITLE
EOF
    echo "Created " $TITLE
done