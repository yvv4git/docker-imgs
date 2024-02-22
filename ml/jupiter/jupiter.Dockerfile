FROM jupyter/base-notebook:latest

# Install packages for download datasets
RUN pip3 install opendatasets kaggle gdown

# Install base packages
RUN pip3 install numpy pandas matplotlib

# Install math and statistics packages
RUN pip3 install pulp scipy seaborn

# Install data analyse packages
# ydata-profiling - fail
RUN pip3 install missingno sketch dtale sweetviz pydot

# Install ml and ai packages
# tensorflow-cpu - fail
# tensorflow_text - fail
RUN pip3 install nltk scikit-learn spacy \
    tensorflow tensorflow_hub pyfpgrowth

# Install finance packages
RUN pip3 install yfinance yahoo_fin cryptocmd mplfinance python-binance pandas-ta

# Install additional packages
RUN pip3 install plotly openpyxl networkx

# Install audio processing packages
RUN pip3 install librosa

# Install sklearn
RUN python3 -m pip install -U scikit-learn

## Libs for timeseries
RUN pip3 install AutoTS

## Libs for generate images
RUN pip3 install tensorflow keras_cv --upgrade --quiet
