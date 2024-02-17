# Docker Cleanup Plugin

Helps you clean up unused Docker images, containers, volumes, and networks
based on a specified period, ensuring your system remains clutter-free and
conserves disk space.

## Installation

To install the plugin, run the following commands in your terminal. These
commands download the plugin script, make it executable, and move it to the
appropriate directory for Docker CLI plugins.

```bash
curl "https://raw.githubusercontent.com/muxit-studio/docker-cleanup/main/docker-cleanup" -o ~/.docker/cli-plugins/docker-cleanup
```

## Usage

After installation, you can invoke the plugin using the Docker CLI with the
docker cleanup command. The plugin supports several commands and options to
target specific Docker objects and set a cleanup period.

```text
Usage: docker cleanup [COMMAND] [TIME]

A Docker CLI plugin to clean up unused docker images, containers, volumes and
networks on a given days. [TIME] is a duration string

Commands:
  help                Show this help message
  all                 Clean up all unused Docker objects (containers, images, volumes, networks)

Examples:
  docker cleanup all 30d
  docker cleanup all 2w
  docker cleanup all 1y
```

## Contributing

Contributions are welcome! Please feel free to submit pull requests or open
issues.

## License

This Docker cleanup plugin is open-source software licensed under the MIT
license.
