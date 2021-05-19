# How to generate table of JASPAR matrix ID and gene name

Last access to JASPAR: 2021/05/19

## Download TRANSFAC format of JASPAR CORE Vertebrate & generate JASPAR-UniProtID table

1. Run `make_table_jaspar_uniprot.sh`
	- When multiple UniProt IDs (or TFs) are assigned to a single JASPAR matrix ID, this script will generate multiple rows.
		- e.g., MA0517.1 (STAT1::STAT2)


## Convert UniProt ID into gene name

1. Access https://www.uniprot.org/mapping/
2. Upload `JASPAR2020_CORE_vertebrates_non-redundant_pfms_transfac_uniprot_id.txt`
3. Select options: From="UniProtKB AC/ID", To="Gene name"
4. Submit
5. Donwload table (`M20210519E5A08BB0B2D1C45B0C7BC3B55FD265561F1B55A.tab.txt`) into `out/`

## Join tables

1. Run `join_tables.sh`
	- This requires R tidyverse package



## Result is here!

[out/etable_JASPAR2020_CORE_vertebrates_non-redundant_pfms_transfac_genename.tsv](out/table_JASPAR2020_CORE_vertebrates_non-redundant_pfms_transfac_genename.tsv)

