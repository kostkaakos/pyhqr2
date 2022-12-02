FROM registry.access.redhat.com/ubi7/ubi:7.9-861.1669887437
MAINTAINER Kostka Akos PYHQR2
LABEL description="Felho technologiak beadando"
RUN yum install -y httpd && \
    yum clean all
COPY ./pyhqr2/ /var/www/html/
EXPOSE 80
CMD ["httpd", "-D", "FOREGROUND"]