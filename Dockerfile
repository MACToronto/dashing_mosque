From frvi/dashing

RUN apt-get update && apt-get install -y vim

COPY dashboards/ /dashing/dashboards/
COPY widgets/ /dashing/widgets/
COPY jobs/ /dashing/jobs/
COPY assets/ /dashing/assets/
COPY Gemfile /dashing/Gemfile

RUN bundle

