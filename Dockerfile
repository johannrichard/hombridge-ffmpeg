FROM oznu/homebridge:1.1.3

# Install latest ffmpeg 
RUN apk add --no-cache ffmpeg

# Install homebridge-camera-ffmpeg
RUN yarn global add homebridge-camera-ffmpeg

WORKDIR /homebridge
VOLUME /homebridge

ENV S6_KEEP_ENV=1