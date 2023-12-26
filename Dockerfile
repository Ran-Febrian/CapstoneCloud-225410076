FROM ubuntu:22.04
RUN apt-get update && apt-get upgrade -y
RUN apt-get install wget unzip -y
WORKDIR /usr/share/ubuntu/html
COPY default.conf /etc/ubuntu/project/
RUN wget https://github.com/Ran-Febrian/CapstoneCloud-225410076./raw/main/CapstoneCloud-2245410076.zip .
RUN unzip CapstoneCloud-225410076.zip
RUN mv CapstoneCloud-225410076/* .
RUN rm -rf CapstoneCloud-225410076 CapstoneCloud-225410076.zip
EXPOSE 80
CMD ["/bin/bash"]
