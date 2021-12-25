#!/bin/bash

if [ -n "$NEXT_PUBLIC_CONFIG" ]; then
    echo "NEXT_PUBLIC_CONFIG received"
    echo "$NEXT_PUBLIC_CONFIG"
fi

# run the original firebase
if [ $FIREBASE_TOKEN ]; then
  NEXT_PUBLIC_CONFIG=$NEXT_PUBLIC_CONFIG firebase "$@" --token $FIREBASE_TOKEN
else
  firebase "$@"
fi
