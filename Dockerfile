FROM python:3-alpine
ENV TZ=America/New_York

#
#  Setting up timezone to EST (New York).
#
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone


COPY . /app

WORKDIR "/app"

EXPOSE 8000

CMD ["python", "-m", "http.server"]