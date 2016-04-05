#!/bin/sh
echo "MONGO_HOST:"$MONGO_HOST;
echo "TARGET_HOST:"$TARGET_HOST;
echo "DOC_MANAGER:"$DOC_MANAGER;

mongo-connector \
  -m $MONGO_HOST \
  -t $TARGET_HOST \
  -d $DOC_MANAGER \
  $@ &

sleep 10;
echo "Now dumping logs"
tail -f /mongo-connector.log;
