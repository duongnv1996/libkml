#!/bin/sh

echo "// This file is automatically generated. Do not edit manually."
echo ""
echo "// libkml includes."

for f in $( find ../../src -type f -name "*.h" | egrep -v "internal|test|stdafx" )
do
  echo "#include \"${f:10}\""
done

echo ""
echo "// boost includes."
echo "#include \"boost/intrusive_ptr.hpp\""
echo "#include \"boost/scoped_ptr.hpp\""