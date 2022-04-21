# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.183.0/containers/cpp/.devcontainer/base.Dockerfile

# [Choice] Debian / Ubuntu version: debian-10, debian-9, ubuntu-20.04, ubuntu-18.04
ARG VARIANT="buster"
FROM mcr.microsoft.com/vscode/devcontainers/cpp:0-${VARIANT}

WORKDIR /home/vscode

COPY scripts scripts

# avoid warnings by switching to noninteractive
RUN export DEBIAN_FRONTEND=noninteractive && sudo apt-get update -qq && sudo apt-get upgrade -y -qq \
  && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git /home/vscode/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting \
  && git clone https://github.com/zsh-users/zsh-autosuggestions /home/vscode/.oh-my-zsh/custom/plugins/zsh-autosuggestions \
  && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git /root/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting \
  && git clone https://github.com/zsh-users/zsh-autosuggestions /root/.oh-my-zsh/custom/plugins/zsh-autosuggestions \
  && cd scripts \
  {% if cookiecutter.add_gcc10_install_script.upper() == "YES" -%}
&& sh install-gcc10.sh \
  {% endif -%}
{%- if cookiecutter.add_armadillo_install_scripts.upper() == "YES" -%}
&& sh install-openblas-lapack.sh \
  && sh install-armadillo.sh \
  {% endif -%}
{%- if cookiecutter.add_arrayfire_install_script.upper() == "YES" -%}
&& sh install-arrayfire.sh \
  {% endif -%}
{%- if cookiecutter.add_matplotpp_install_script.upper() == "YES" -%}
&& sh install-matplotpp.sh \
  {% endif -%}
{%- if cookiecutter.add_catch2_install_script.upper() == "YES" -%}
&& sh install-catch2.sh \
  {% endif -%}
{%- if cookiecutter.add_spdlog_install_script.upper() == "YES" -%}
&& sh install-spdlog.sh \
  {% endif -%}
{%- if cookiecutter.add_json_install_script.upper() == "YES" -%}
&& sh install-json.sh \
  {% endif -%}
{%- if cookiecutter.add_itpp_install_script.upper() == "YES" -%}
&& sh install-itpp.sh \
  {% endif -%}
{%- if cookiecutter.add_pybind11_install_script.upper() == "YES" -%}
&& sh install-pybind11.sh \
  {% endif -%}
{%- if cookiecutter.add_gdal_install_scripts.upper() == "YES" -%}
&& sh install-proj.sh \
  && sh install-gdal.sh \
  {% endif -%}
{%- if cookiecutter.add_geographiclib_install_script.upper() == "YES" -%}
&& sh install-geographiclib.sh \
  {% endif -%}
&& cd .. \
&& apt-get autoremove -y \
  && apt-get clean -y \
  && rm -rf /var/lib/apt/lists/*
  && rm -rf scripts

COPY conf/.zshrc /home/vscode
COPY conf/custom.zsh-theme /home/vscode/.oh-my-zsh/custom/themes

COPY conf/.zshrc /root
COPY conf/custom.zsh-theme /root/.oh-my-zsh/custom/themes

# Set the default shell to bash rather than sh
ENV SHELL /bin/zsh
