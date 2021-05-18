# Build LBLRTM and LBLRTM in the latest CentOS environment
FROM centos:6

# install tools necessary for building models
RUN yum -y install make gcc-gfortran && \
  yum -y -q update && \
  yum clean all
RUN rm -rf /var/cache/yum/*

WORKDIR /LBLRTM

# necessary code for LBLRTM
ADD aer_rt_utils /LBLRTM/aer_rt_utils
ADD build /LBLRTM/build
ADD src /LBLRTM/src
ADD cross-sections/xs /LBLRTM/xs
ADD cross-sections/FSCDXS /LBLRTM/FSCDXS

# build the model and clean up after the build
RUN cd /LBLRTM/build; \
  make -f make_lblrtm linuxGNUsgl; \
  make -f make_lblrtm linuxGNUdbl; \
  rm -rf lblrtm_v12.9_linux_gnu_*.obj *.mod; \
  cd /LBLRTM; \
  ln -s lblrtm_v12.9_linux_gnu_sgl lblrtm

ENV PATH "/LBLRTM:$PATH"
RUN echo "export PATH=/new/path:${PATH}" >> /root/.bashrc
WORKDIR /data
CMD ["/bin/bash"]
