# creates a custom include file if necessary.
# its content needs to be defined externally.
define dns::custom_include {

  if defined(File[$title]) {
    File <| title == $title |> {
      owner => 'root',
      group => $dns::params::group,
      mode  => '0640',
    }
  } else {
    file { $title:
      owner => 'root',
      group => $dns::params::group,
      mode  => '0640',
    }
  }
}
