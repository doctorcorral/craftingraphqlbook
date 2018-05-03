#===========
#Build Stage
#===========
FROM bitwalker/alpine-elixir:1.5 as build

#Copy the source folder into the Docker image
COPY . .

#Install dependencies and build Release
RUN export MIX_ENV=prod && \
    rm -Rf _build && \
    mix deps.get

#Extract Release archive to /rel for copying in next stage
RUN APP_NAME="plate_slate"

#================
#Deployment Stage
#================

#Set environment variables and expose port
EXPOSE 4000
ENV REPLACE_OS_VARS=true \
    PORT=4000

#Copy and extract .tar.gz Release file from the previous stage
#COPY --from=build /export/ .

#Change user
#USER default


CMD ["mix", "phx.server"]%
