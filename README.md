# Sparkel

Sparkel is a port of spark for Elixir and lets you create ASCII sparklines

## Installation

  1. Add `sparkel` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:sparkel, "~> 0.1.0"}]
    end
    ```

  2. Ensure `sparkel` is started before your application:

    ```elixir
    def application do
      [applications: [:sparkel]]
    end
    ```


## Usage

```elixir

Sparkel.sparkline [2, 5, 1, 9]

# "▁▄▁█" 
```

## Author

Dimitar Kostov (@mytrile)


## Credits

Sparkr would not exist without Zach Holman's [spark](https://github.com/holman/spark) and René Föhring's [sparkr](https://github.com/rrrene/sparkr)


## License

Sparkr is released under the MIT License. See the LICENSE file for further
details.
