{
  description = "Flake templates";

  outputs =
    { ... }:
    {
      templates = {
        aarch64-darwin = {
          path = ./templates/aarch64-darwin;
          description = "A flake template for aarch64-darwin.";
        };

        aarch64-linux = {
          path = ./templates/aarch64-linux;
          description = "A flake template for aarch64-linux.";
        };

        systems = {
          aarch64 = {
            path = ./templates/systems/aarch64;
            description = "A flake template for aarch64 systems.";
          };
        };
      };
    };
}
