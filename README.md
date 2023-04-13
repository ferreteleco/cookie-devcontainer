# Cookiecutter project for remote development configuration in VSCode

![MIT License](https://img.shields.io/static/v1.svg?label=📜%20License&message=MIT&color=informational)

---

This repository can be used for generating a number of different VSCode remote container
configuration files.

## Usage

In order to start a new project, install [Cookiecutter](https://cookiecutter.readthedocs.io/en/latest/) and run the following command:

```bash
$ cookiecutter https://github.com/ferreteleco/cookie-devcontainer.git --directory="<dir-name>"
```

Where <dir-name> is one of the sub-folders of this repository (each one will hold a different configuration
for remote development in Docker containers).

It will create the appropriate .devcontainer folder in your project directory (wherever you invoke
cookiecutter). Following, the normal procedure described in VSCode Remote Container documentation
can be used to setup the remote environment up and running.

NOTE: it can also be cloned using GIT over SSH, if properly configured in your account.

NOTE1: after the repository is downloaded, the template can be used again without downloading it
again. In order to do so, simply specify template name as argument for cookiecutter:

```bash
$ cookiecutter cookie-devcontainer --directory="<dir-name>"
```

### C++ Dockerfile and related installation scripts (dir-name: cpp-vscode-dockerfile)

### C++ Dockerfile and related installation scripts (dir-name: cpp-dockerfile)

This template is intended to be used in VSCode remote container development for C++. It builds a new
image based on the contents of the provided dockerfile (based on a generic ubuntu image).

It optionally installs gcc/g++ v10 and some useful utilities, namely:

- Libraries:
    - IT++: http://itpp.sourceforge.net/4.3.1/index.html
    - Arrayfire: https://arrayfire.com/
    - Armadillo: https://arma.sourceforge.net/docs.html
    - JSON For Modern C++: https://github.com/nlohmann/json
    - Geographiclib: https://geographiclib.sourceforge.io/
    - PROJ: https://proj.org/
    - GDAL: https://github.com/OSGeo/gdal
    - PyBind11: https://github.com/pybind/pybind11

- Testing deps:
    - Catch2: https://github.com/catchorg/Catch2
    - Matplot++: https://alandefreitas.github.io/matplotplusplus/
        - Inside Docker, the non-interactive must be used in order to avoid the invocation of a graphics
          backend. Refs:
            - https://alandefreitas.github.io/matplotplusplus/coding-styles/reactive-vs-quiet-figures/
            - https://alandefreitas.github.io/matplotplusplus/exporting/saving-programatically/

#### Variables

Variables allow to customize your project. After running one of the previous cookiecutter commands,
you will be prompted to fill in the following values:

- **project_name**: Project's name
- **project_short_name**: Acronym of the project. Defaults to the first letter of each word in
  project_name, capitalized. It is recommended to maintain the default value.
- **full_name**: Your full name
- **email**: Your email
- **add_gcc10_install_script**: flag that controls the inclusion of a gcc10 installation script
- **add_matplotpp_install_script**: flag that controls the inclusion of a matplot++ installation script
- **add_catch2_install_script**: flag that controls the inclusion of a Catch2 installation script
- **add_spdlog_install_script**: flag that controls the inclusion of a spdlog installation script
- **add_json_install_script**: flag that controls the inclusion of a JSON for Modern C++ installation script
- **add_armadillo_install_scripts**: flag that controls the inclusion of an Armadillo installation script
- **add_arrayfire_install_script**: flag that controls the inclusion of an Arrayfire installation script
- **add_itpp_install_script**: flag that controls the inclusion of an IT++ installation script
- **add_geographiclib_install_script**: flag that controls the inclusion of an geographiclib installation script
- **add_pybind11_install_script**: flag that controls the inclusion of an pybind11 installation script
- **add_gdal_install_scripts**: flag that controls the inclusion of an GDAL installation scripts

### More docker images and configs TBD

## Contributing

If you want to contribute to this template, feel free to do so! Create a new branch to work in, and
open a pull request when you are done! It will be reviewed and merged into master by one of the
maintainers as soon as possible.

## Authors

- [Andrés Ferreiro González](https://github.com/ferreteleco)

## Maintainer

- [Andrés Ferreiro González](https://github.com/ferreteleco)
