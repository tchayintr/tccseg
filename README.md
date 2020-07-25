# Thai Character Cluster Segmenter
#### _tccseg_

A tool for segmenting character clusters from unsegmented text, particularly for Thai language.

### Installation (PyPI)
```
pip install tccseg
```

### Usage (PyPI)
```
from tccseg.core import Core
segmenter = Core()
res = segmenter.segment("เธอคือพจนานุกรม")
# res: ['เธ', 'อ', 'คือ', 'พ', 'จ', 'นา', 'นุ', 'ก', 'ร', 'ม'])
```
```
segmenter = Core(cclib='original')
res = segmenter.segment("เธอคือพจนานุกรม")
```

### Usage (dev)
```
usage: segmenter.py [-h] [--execute_mode {segment,interactive}] --input_data
                    INPUT_DATA [--cclib {original, cfcc}]

optional arguments:
  -h, --help            show this help message and exit
  --execute_mode {segment,interactive}, -x {segment,interactive}
                        Choose a mode from among 'segment' and 'interactive'
  --input_data INPUT_DATA, -i INPUT_DATA
                        Input data (text)
  --cclib {original, cfcc}
                        Specify Character Cluster library from among
                        'original' and 'cfcc' (Default: original)
```

#### Execute mode (See 'sample_scripts/' for more details)
- segment: segment input data into character cluster
- interactive: segment input text (stdin) into character cluster

#### Character Cluster Library (cclib)
- **[original](https://dl.acm.org/doi/10.1145/355214.355225)**: Proposed by Theeramunkong et al. 2000. and revised by **[pythainlp](https://github.com/PyThaiNLP/pythainlp/blob/dev/pythainlp/tokenize/tcc.py)**
- cfcc: soon

### Acknowledgement
```
Thanaruk Theeramunkong, Virach Sornlertlamvanich, Thanasan Tanhermhong, and Wirat Chinnan. 2000. Character cluster based Thai information retrieval. In Proceedings of the fifth international workshop on on Information retrieval with Asian languages (IRAL ’00). Association for Computing Machinery, New York, NY, USA, 75–80. DOI:https://doi.org/10.1145/355214.355225
```
```
Wannaphong Phatthiyaphaibun, Korakot Chaovavanich, Charin Polpanumas, Arthit Suriyawongkul, Lalita Lowphansirikul, & Pattarawat Chormai. (2016, Jun 27). PyThaiNLP: Thai Natural Language Processing in Python. Zenodo. http://doi.org/10.5281/zenodo.3519354
```
