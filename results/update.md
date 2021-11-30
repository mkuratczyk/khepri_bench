
# Benchmark

This benchmark compares `khepri:insert` for an existing key, at the root of a tree and 5 levels deep


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
    <td style="white-space: nowrap">update_root</td>
    <td style="white-space: nowrap; text-align: right">1.76 K</td>
    <td style="white-space: nowrap; text-align: right">569.20 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;41.27%</td>
    <td style="white-space: nowrap; text-align: right">514.05 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">1588.97 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">update_5deep</td>
    <td style="white-space: nowrap; text-align: right">1.69 K</td>
    <td style="white-space: nowrap; text-align: right">592.01 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;43.18%</td>
    <td style="white-space: nowrap; text-align: right">530.09 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">1640.45 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">swap_root</td>
    <td style="white-space: nowrap; text-align: right">1.62 K</td>
    <td style="white-space: nowrap; text-align: right">615.58 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;44.91%</td>
    <td style="white-space: nowrap; text-align: right">542.88 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">1683.64 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">swap_5deep</td>
    <td style="white-space: nowrap; text-align: right">1.61 K</td>
    <td style="white-space: nowrap; text-align: right">621.77 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;47.72%</td>
    <td style="white-space: nowrap; text-align: right">544.92 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">1662.12 &micro;s</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">update_root</td>
    <td style="white-space: nowrap;text-align: right">1.76 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">update_5deep</td>
    <td style="white-space: nowrap; text-align: right">1.69 K</td>
    <td style="white-space: nowrap; text-align: right">1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">swap_root</td>
    <td style="white-space: nowrap; text-align: right">1.62 K</td>
    <td style="white-space: nowrap; text-align: right">1.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">swap_5deep</td>
    <td style="white-space: nowrap; text-align: right">1.61 K</td>
    <td style="white-space: nowrap; text-align: right">1.09x</td>
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
    <td style="white-space: nowrap">update_root</td>
    <td style="white-space: nowrap">0.90 KB</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">update_5deep</td>
    <td style="white-space: nowrap">0.96 KB</td>
    <td>1.07x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">swap_root</td>
    <td style="white-space: nowrap">1.05 KB</td>
    <td>1.17x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">swap_5deep</td>
    <td style="white-space: nowrap">1.27 KB</td>
    <td>1.41x</td>
  </tr>
</table>


