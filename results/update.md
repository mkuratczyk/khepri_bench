
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
    <td style="white-space: nowrap; text-align: right">1.71 K</td>
    <td style="white-space: nowrap; text-align: right">585.71 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;43.15%</td>
    <td style="white-space: nowrap; text-align: right">521.35 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">1616.27 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">insert_root</td>
    <td style="white-space: nowrap; text-align: right">1.69 K</td>
    <td style="white-space: nowrap; text-align: right">590.83 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;40.07%</td>
    <td style="white-space: nowrap; text-align: right">538.16 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">1656.32 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">update_5deep</td>
    <td style="white-space: nowrap; text-align: right">1.68 K</td>
    <td style="white-space: nowrap; text-align: right">596.35 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;43.25%</td>
    <td style="white-space: nowrap; text-align: right">534.05 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">1639.39 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">swap_root</td>
    <td style="white-space: nowrap; text-align: right">1.66 K</td>
    <td style="white-space: nowrap; text-align: right">601.68 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;43.49%</td>
    <td style="white-space: nowrap; text-align: right">531.60 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">1631.78 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">insert_5deep</td>
    <td style="white-space: nowrap; text-align: right">1.64 K</td>
    <td style="white-space: nowrap; text-align: right">609.79 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;43.68%</td>
    <td style="white-space: nowrap; text-align: right">546.45 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">1667.87 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">swap_5deep</td>
    <td style="white-space: nowrap; text-align: right">1.62 K</td>
    <td style="white-space: nowrap; text-align: right">617.95 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;57.23%</td>
    <td style="white-space: nowrap; text-align: right">537.04 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">1676.78 &micro;s</td>
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
    <td style="white-space: nowrap;text-align: right">1.71 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">insert_root</td>
    <td style="white-space: nowrap; text-align: right">1.69 K</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">update_5deep</td>
    <td style="white-space: nowrap; text-align: right">1.68 K</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">swap_root</td>
    <td style="white-space: nowrap; text-align: right">1.66 K</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">insert_5deep</td>
    <td style="white-space: nowrap; text-align: right">1.64 K</td>
    <td style="white-space: nowrap; text-align: right">1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">swap_5deep</td>
    <td style="white-space: nowrap; text-align: right">1.62 K</td>
    <td style="white-space: nowrap; text-align: right">1.06x</td>
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
    <td style="white-space: nowrap">1 KB</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">insert_root</td>
    <td style="white-space: nowrap">0.90 KB</td>
    <td>0.9x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">update_5deep</td>
    <td style="white-space: nowrap">0.96 KB</td>
    <td>0.96x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">swap_root</td>
    <td style="white-space: nowrap">1.05 KB</td>
    <td>1.05x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">insert_5deep</td>
    <td style="white-space: nowrap">0.96 KB</td>
    <td>0.96x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">swap_5deep</td>
    <td style="white-space: nowrap">1.27 KB</td>
    <td>1.27x</td>
  </tr>
</table>


