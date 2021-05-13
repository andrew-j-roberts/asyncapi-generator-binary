# AsyncAPI Generator image w/ preinstalled Java Spring Cloud Stream Generator Template

This repository contains a Dockerfile and Github Action for building an image that includes both the latest version of AsyncAPI Generator and one of its officially supported templates, Java Spring Cloud Stream. Bundling these two packages together will make it possible to generate code without downloading the template in the build step.

The AsyncAPI Generator [supports using globally installed templates](https://github.com/asyncapi/generator#global-templates-installed-with-yarn-or-npm), so the Docker image is built by globally installing the templates (easy!)

# Loading the binary into Docker

If you'd like to load the binary into your local Docker registry, you can download it and then run:

```
docker load < scs-gen.tar.gz
```
