date
# SAMPLE NAMES
exome_samples=("father" "mother" "proband")

# CREATE DIRECTORY FOR MAPPED FILES
mkdir mapped_reads

# RUN BWA
for sample in "${exome_samples[@]}"; do
echo -e "Mapping $sample fastq file to reference sequence"
bwa mem -t 7 -o mapped_reads/"$sample".sam idx/chr8_hs raw_reads/"$sample"_R1.fq raw_reads/"$sample"_R2.fq
done

date
