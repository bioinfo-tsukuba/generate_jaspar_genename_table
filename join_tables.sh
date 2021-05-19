#!/bin/bash

Rscript --vanilla join_tables.R \
	out/table_JASPAR2020_CORE_vertebrates_non-redundant_pfms_transfac.tsv \
	out/M20210519E5A08BB0B2D1C45B0C7BC3B55FD265561F1B55A.tab.txt \
	out/table_JASPAR2020_CORE_vertebrates_non-redundant_pfms_transfac_genename.tsv
