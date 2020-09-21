version=$(grep "version" "$1")
regex="version\s*=\s*([0-9\.]+)"
if [[ $version =~ $regex ]]
then
  echo "${BASH_REMATCH[1]}"
else
  echo -e "\033[0;31mERROR: unable to find version in $1" >&2
fi
