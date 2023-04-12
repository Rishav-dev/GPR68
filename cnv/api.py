
import requests

import pandas as pd
df = pd.read_csv('cna-tsv.csv')
df.head()

def get_samples(studyId, sampleID):
    url = 'https://www.cbioportal.org/api/studies/' +studyId + '/samples/' + sampleID 
    r = requests.get(url)
    print(r.text)
#read cna-tsv.csv filez


#for each of the samples in the cna-tsv.csv file, get the sampleId and the patientId
for index, row in df.iterrows():
    studyID = row['STUDY_ID']
    sampleID = row['SAMPLE_ID']

    get_samples(studyID, sampleID)

    




