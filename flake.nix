{
  description = "Flake templates";

  outputs =
    { ... }:
    {
      templates = {
        default = {
          path = ./templates/default;
          description = "Default flake template.";
        };

        aarch64-darwin = {
          path = ./templates/aarch64-darwin;
          description = "A flake template for aarch64-darwin.";
        };

        aarch64-linux = {
          path = ./templates/aarch64-linux;
          description = "A flake template for aarch64-linux.";
        };
      };
    };
}
