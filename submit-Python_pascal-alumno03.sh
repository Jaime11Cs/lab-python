#!/bin/bash
#SBATCH -p hpc-bio-pascal
#SBATCH --chdir=/home/alumno03/lab-python
#SBATCH --cpus-per-task=1
#SBATCH --output=/home/alumno03/lab-python/slurm-%j.out

#Cargar el módulo Anaconda
module load anaconda/2023.03

#Variables
NOTEBOOK="reduc-operation-alumno03.ipynb"

#Ejecutar el notebook con 10**7 elementos
echo "Ejecutando el notebook con 10**7 elementos"
ipython $NOTEBOOK $((10**7))

#Ejecutando el notebook con 10**8 elementos
echo "Ejecutando el notebook con 10**8 elementos"
ipython $NOTEBOOK $((10**8))

echo "Ejecución completada"
