FROM gcc:latest
RUN mkdir -p /usr/src/cpp_test 
COPY ./main.c /usr/src/cpp_test 
WORKDIR /usr/src/cpp_test 
RUN gcc -o main.exe main.c
ENV TZ Europe/Kiev
CMD ["./main.exe"]