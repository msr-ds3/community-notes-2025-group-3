for i in $(seq 0 19)
do
    if ((i < 10))
    then
        unzip ratings-0000${i}.zip
    else
        unzip ratings-000${i}.zip
    fi
done