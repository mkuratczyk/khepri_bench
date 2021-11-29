
# Benchmark

This benchmark compares `khepri:delete` at the root of a tree and 5 levels deep


## System

Benchmark suite executing on the following system:

<table style="width: 1%">
  <tr>
    <th style="width: 1%; white-space: nowrap">Operating System</th>
    <td>Linux</td>
  </tr><tr>
    <th style="white-space: nowrap">CPU Information</th>
    <td style="white-space: nowrap">Intel(R) Xeon(R) CPU @ 2.80GHz</td>
  </tr><tr>
    <th style="white-space: nowrap">Number of Available Cores</th>
    <td style="white-space: nowrap">8</td>
  </tr><tr>
    <th style="white-space: nowrap">Available Memory</th>
    <td style="white-space: nowrap">7.76 GB</td>
  </tr><tr>
    <th style="white-space: nowrap">Elixir Version</th>
    <td style="white-space: nowrap">1.12.3</td>
  </tr><tr>
    <th style="white-space: nowrap">Erlang Version</th>
    <td style="white-space: nowrap">24.1.7</td>
  </tr>
</table>

## Configuration

Benchmark suite executing with the following configuration:

<table style="width: 1%">
  <tr>
    <th style="width: 1%">:time</th>
    <td style="white-space: nowrap">3 s</td>
  </tr><tr>
    <th>:parallel</th>
    <td style="white-space: nowrap">1</td>
  </tr><tr>
    <th>:warmup</th>
    <td style="white-space: nowrap">100 ms</td>
  </tr>
</table>

## Statistics




Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">delete_root</td>
    <td style="white-space: nowrap; text-align: right">1.98 K</td>
    <td style="white-space: nowrap; text-align: right">504.14 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;56.94%</td>
    <td style="white-space: nowrap; text-align: right">440.10 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">1804.70 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">delete_5deep</td>
    <td style="white-space: nowrap; text-align: right">1.96 K</td>
    <td style="white-space: nowrap; text-align: right">511.23 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;58.39%</td>
    <td style="white-space: nowrap; text-align: right">439.21 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">1833.23 &micro;s</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">delete_root</td>
    <td style="white-space: nowrap;text-align: right">1.98 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">delete_5deep</td>
    <td style="white-space: nowrap; text-align: right">1.96 K</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">delete_root</td>
    <td style="white-space: nowrap">880 B</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">delete_5deep</td>
    <td style="white-space: nowrap">944 B</td>
    <td>1.07x</td>
  </tr>
</table>


