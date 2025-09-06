FROM eclipse-mosquitto:2

# Copy your modified mosquitto.conf
COPY mosquitto.conf /mosquitto/config/mosquitto.conf

# Expose both TCP and WebSocket ports
EXPOSE 1883
EXPOSE 8080

# Start Mosquitto with your config
CMD ["mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
