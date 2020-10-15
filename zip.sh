find ./ -name lambda_function.py | rev | cut -d/ -f2- | rev > output.txt



echo "Start!"
while read p; do
  echo "$p"
  export v=`echo "$p" | awk -F/ '{print $NF}'`
  echo "$v"
  zip -r "$v.zip"  "$p"
done <output.txt

