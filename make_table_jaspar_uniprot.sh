#!/bin/bash


# Download TRANSFAC format of JAPSAR data (CORE, Vertebrate, non-redudant)
wget http://jaspar.genereg.net/download/CORE/JASPAR2020_CORE_vertebrates_non-redundant_pfms_transfac.zip
unzip JASPAR2020_CORE_vertebrates_non-redundant_pfms_transfac.zip

# Config
in_dir=JASPAR2020_CORE_vertebrates_non-redundant_pfms_transfac
ofile=out/table_JASPAR2020_CORE_vertebrates_non-redundant_pfms_transfac.tsv
ofile2=out/JASPAR2020_CORE_vertebrates_non-redundant_pfms_transfac_uniprot_id.txt

mkdir -p out

# Make JASPAR accession - uniprot_id table
echo -e "jaspar_matrix\tjaspar_id\tuniprot_id" > $ofile

for transfac_file in `ls $in_dir`
do
    AC=`awk '/^AC/{print $2}' ${in_dir}/${transfac_file}`
    ID=`awk '/^ID/{print $2}' ${in_dir}/${transfac_file}`
    UNI=`awk '/uniprot_ids/{gsub("CC uniprot_ids:", "", $0); print $0}' ${in_dir}/${transfac_file}`

    UNI_array=($(echo $UNI | tr "; " "\n"))

    for UNIPROT in "${UNI_array[@]}"
	do
	    echo -e "$AC\t$ID\t$UNIPROT" >> $ofile
	    echo "$UNIPROT" >> $ofile2
	done    
done
