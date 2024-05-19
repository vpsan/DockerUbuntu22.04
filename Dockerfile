FROM leimao/boost:1.80.0

# GTest installed
RUN git clone https://github.com/google/googletest.git /usr/src/googletest && \
    cmake -B/usr/src/googletest/build -H/usr/src/googletest && \
    cmake --build /usr/src/googletest/build && \
    cmake --install /usr/src/googletest/build && \
    rm -r /usr/src/googletest

# Default powerline10k theme, no plugins installed
RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.5/zsh-in-docker.sh)"

