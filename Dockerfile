FROM python:2.7.9
RUN mkdir /pilbox
ADD . /pilbox
WORKDIR /pilbox
RUN python setup.py install
EXPOSE 8888
CMD python -m pilbox.app --config=/pilbox/config.ini
