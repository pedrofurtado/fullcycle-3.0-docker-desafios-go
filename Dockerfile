FROM golang:1.15-alpine
WORKDIR /app
COPY . .
ENV USER=appuser
ENV UID=10001
RUN adduser \
    --disabled-password \
    --gecos "" \
    --home "/nonexistent" \
    --shell "/sbin/nologin" \
    --no-create-home \
    --uid "${UID}" \
    "${USER}"
RUN go build -ldflags \
    '-w -s -extldflags "-static"' \
    -a -o application main.go

FROM scratch
ENV USER=appuser
COPY --from=0 /etc/passwd /etc/passwd
COPY --from=0 /etc/group /etc/group
WORKDIR /app
COPY --from=0 /app ./
USER appuser
CMD ["./application"]
