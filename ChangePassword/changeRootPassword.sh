#!/bin/sh

/usr/bin/dscl . passwd /Users/$1 $2
status=$?

if [ $status == 0 ]; then

echo "Password was changed successfully."

elif [ $status != 0 ]; then

echo "An error was encountered while attempting to change the password. /usr/bin/dscl exited $status."

fi

exit $status
