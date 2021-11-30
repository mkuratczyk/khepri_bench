
# Benchmark

This benchmark compares `khepri:has_data` for an existing and non-existing keys, at the root and deep in the tree


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
    <td style="white-space: nowrap; text-align: right">290.14 K</td>
    <td style="white-space: nowrap; text-align: right">3.45 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;1667.49%</td>
    <td style="white-space: nowrap; text-align: right">3.07 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">6.79 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">has_data_root</td>
    <td style="white-space: nowrap; text-align: right">286.94 K</td>
    <td style="white-space: nowrap; text-align: right">3.49 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;1082.21%</td>
    <td style="white-space: nowrap; text-align: right">3.19 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">6.72 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">does_not_exist_5deep</td>
    <td style="white-space: nowrap; text-align: right">269.64 K</td>
    <td style="white-space: nowrap; text-align: right">3.71 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;843.69%</td>
    <td style="white-space: nowrap; text-align: right">3.35 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">7.33 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">has_data_5deep</td>
    <td style="white-space: nowrap; text-align: right">266.28 K</td>
    <td style="white-space: nowrap; text-align: right">3.76 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;684.10%</td>
    <td style="white-space: nowrap; text-align: right">3.50 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">5.91 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">does_not_exist_10deep</td>
    <td style="white-space: nowrap; text-align: right">250.50 K</td>
    <td style="white-space: nowrap; text-align: right">3.99 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;940.21%</td>
    <td style="white-space: nowrap; text-align: right">3.64 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">7.09 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">has_data_10deep</td>
    <td style="white-space: nowrap; text-align: right">242.34 K</td>
    <td style="white-space: nowrap; text-align: right">4.13 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;1172.79%</td>
    <td style="white-space: nowrap; text-align: right">3.75 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">6.63 &micro;s</td>
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
    <td style="white-space: nowrap;text-align: right">290.14 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">has_data_root</td>
    <td style="white-space: nowrap; text-align: right">286.94 K</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">does_not_exist_5deep</td>
    <td style="white-space: nowrap; text-align: right">269.64 K</td>
    <td style="white-space: nowrap; text-align: right">1.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">has_data_5deep</td>
    <td style="white-space: nowrap; text-align: right">266.28 K</td>
    <td style="white-space: nowrap; text-align: right">1.09x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">does_not_exist_10deep</td>
    <td style="white-space: nowrap; text-align: right">250.50 K</td>
    <td style="white-space: nowrap; text-align: right">1.16x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">has_data_10deep</td>
    <td style="white-space: nowrap; text-align: right">242.34 K</td>
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
    <td style="white-space: nowrap">856 B</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">has_data_root</td>
    <td style="white-space: nowrap">944 B</td>
    <td>1.1x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">does_not_exist_5deep</td>
    <td style="white-space: nowrap">920 B</td>
    <td>1.07x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">has_data_5deep</td>
    <td style="white-space: nowrap">1008 B</td>
    <td>1.18x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">does_not_exist_10deep</td>
    <td style="white-space: nowrap">1000 B</td>
    <td>1.17x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">has_data_10deep</td>
    <td style="white-space: nowrap">1088 B</td>
    <td>1.27x</td>
  </tr>
</table>


