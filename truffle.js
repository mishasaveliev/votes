module.exports = {
  migrations_directory: "./migrations",
  networks: {
    development: {
      host: "localhost",
      port: 8545,
      from: "0x95e24955386e38fb7a52DF2647B67cB4f3D4C18d",
      network_id: "*" // Match any network id
    }
  }
};
