
# Benchmark

This benchmark compares `khepri:exists` for an existing and non-existing keys, at the root and deep in the tree


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
    <td style="white-space: nowrap">does_not_exist_root</td>
    <td style="white-space: nowrap; text-align: right">308.07 K</td>
    <td style="white-space: nowrap; text-align: right">3.25 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;1642.33%</td>
    <td style="white-space: nowrap; text-align: right">2.86 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">6.78 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">exists_root</td>
    <td style="white-space: nowrap; text-align: right">303.31 K</td>
    <td style="white-space: nowrap; text-align: right">3.30 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;1689.94%</td>
    <td style="white-space: nowrap; text-align: right">2.91 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">6.57 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">does_not_exist_5deep</td>
    <td style="white-space: nowrap; text-align: right">293.71 K</td>
    <td style="white-space: nowrap; text-align: right">3.40 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;811.78%</td>
    <td style="white-space: nowrap; text-align: right">3.14 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">6.78 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">exists_5deep</td>
    <td style="white-space: nowrap; text-align: right">279.81 K</td>
    <td style="white-space: nowrap; text-align: right">3.57 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;1522.78%</td>
    <td style="white-space: nowrap; text-align: right">3.23 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">5.30 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">does_not_exist_10deep</td>
    <td style="white-space: nowrap; text-align: right">263.86 K</td>
    <td style="white-space: nowrap; text-align: right">3.79 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;997.22%</td>
    <td style="white-space: nowrap; text-align: right">3.45 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">6.76 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">exists_10deep</td>
    <td style="white-space: nowrap; text-align: right">257.47 K</td>
    <td style="white-space: nowrap; text-align: right">3.88 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;1689.46%</td>
    <td style="white-space: nowrap; text-align: right">3.46 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">6.55 &micro;s</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">does_not_exist_root</td>
    <td style="white-space: nowrap;text-align: right">308.07 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">exists_root</td>
    <td style="white-space: nowrap; text-align: right">303.31 K</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">does_not_exist_5deep</td>
    <td style="white-space: nowrap; text-align: right">293.71 K</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">exists_5deep</td>
    <td style="white-space: nowrap; text-align: right">279.81 K</td>
    <td style="white-space: nowrap; text-align: right">1.1x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">does_not_exist_10deep</td>
    <td style="white-space: nowrap; text-align: right">263.86 K</td>
    <td style="white-space: nowrap; text-align: right">1.17x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">exists_10deep</td>
    <td style="white-space: nowrap; text-align: right">257.47 K</td>
    <td style="white-space: nowrap; text-align: right">1.2x</td>
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
    <td style="white-space: nowrap">does_not_exist_root</td>
    <td style="white-space: nowrap">856.00 B</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">exists_root</td>
    <td style="white-space: nowrap">928 B</td>
    <td>1.08x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">does_not_exist_5deep</td>
    <td style="white-space: nowrap">920.00 B</td>
    <td>1.07x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">exists_5deep</td>
    <td style="white-space: nowrap">992 B</td>
    <td>1.16x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">does_not_exist_10deep</td>
    <td style="white-space: nowrap">1000 B</td>
    <td>1.17x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">exists_10deep</td>
    <td style="white-space: nowrap">992 B</td>
    <td>1.16x</td>
  </tr>
</table>


