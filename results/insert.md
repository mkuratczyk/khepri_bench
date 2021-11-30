
# Benchmark

This benchmark compares `khepri:insert` with different value sizes.


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




__Input: 10 bytes value__

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
    <td style="white-space: nowrap">insert_root</td>
    <td style="white-space: nowrap; text-align: right">1.62 K</td>
    <td style="white-space: nowrap; text-align: right">615.46 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;38.89%</td>
    <td style="white-space: nowrap; text-align: right">565.19 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">1663.96 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">insert_5deep</td>
    <td style="white-space: nowrap; text-align: right">1.60 K</td>
    <td style="white-space: nowrap; text-align: right">624.59 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;49.67%</td>
    <td style="white-space: nowrap; text-align: right">556.13 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">1716.21 &micro;s</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">insert_root</td>
    <td style="white-space: nowrap;text-align: right">1.62 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">insert_5deep</td>
    <td style="white-space: nowrap; text-align: right">1.60 K</td>
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
    <td style="white-space: nowrap">insert_root</td>
    <td style="white-space: nowrap">832.86 B</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">insert_5deep</td>
    <td style="white-space: nowrap">960.14 B</td>
    <td>1.15x</td>
  </tr>
</table>



__Input: 100 bytes value__

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
    <td style="white-space: nowrap">insert_root</td>
    <td style="white-space: nowrap; text-align: right">1.61 K</td>
    <td style="white-space: nowrap; text-align: right">623.01 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;55.76%</td>
    <td style="white-space: nowrap; text-align: right">541.49 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">1691.64 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">insert_5deep</td>
    <td style="white-space: nowrap; text-align: right">1.59 K</td>
    <td style="white-space: nowrap; text-align: right">627.28 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;48.09%</td>
    <td style="white-space: nowrap; text-align: right">537.02 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">1680.89 &micro;s</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">insert_root</td>
    <td style="white-space: nowrap;text-align: right">1.61 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">insert_5deep</td>
    <td style="white-space: nowrap; text-align: right">1.59 K</td>
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
    <td style="white-space: nowrap">insert_root</td>
    <td style="white-space: nowrap">833.09 B</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">insert_5deep</td>
    <td style="white-space: nowrap">960.03 B</td>
    <td>1.15x</td>
  </tr>
</table>



__Input: 1000 bytes value__

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
    <td style="white-space: nowrap">insert_root</td>
    <td style="white-space: nowrap; text-align: right">1.13 K</td>
    <td style="white-space: nowrap; text-align: right">881.12 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;56.38%</td>
    <td style="white-space: nowrap; text-align: right">596.02 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">1865.45 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">insert_5deep</td>
    <td style="white-space: nowrap; text-align: right">1.07 K</td>
    <td style="white-space: nowrap; text-align: right">932.10 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;57.24%</td>
    <td style="white-space: nowrap; text-align: right">642.03 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">1960.46 &micro;s</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">insert_root</td>
    <td style="white-space: nowrap;text-align: right">1.13 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">insert_5deep</td>
    <td style="white-space: nowrap; text-align: right">1.07 K</td>
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
    <td style="white-space: nowrap">insert_root</td>
    <td style="white-space: nowrap">832.72 B</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">insert_5deep</td>
    <td style="white-space: nowrap">960.05 B</td>
    <td>1.15x</td>
  </tr>
</table>



__Input: 10000 bytes value__

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
    <td style="white-space: nowrap">insert_root</td>
    <td style="white-space: nowrap; text-align: right">612.03</td>
    <td style="white-space: nowrap; text-align: right">1.63 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;7.71%</td>
    <td style="white-space: nowrap; text-align: right">1.62 ms</td>
    <td style="white-space: nowrap; text-align: right">2.01 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">insert_5deep</td>
    <td style="white-space: nowrap; text-align: right">590.77</td>
    <td style="white-space: nowrap; text-align: right">1.69 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;11.90%</td>
    <td style="white-space: nowrap; text-align: right">1.67 ms</td>
    <td style="white-space: nowrap; text-align: right">2.09 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">insert_root</td>
    <td style="white-space: nowrap;text-align: right">612.03</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">insert_5deep</td>
    <td style="white-space: nowrap; text-align: right">590.77</td>
    <td style="white-space: nowrap; text-align: right">1.04x</td>
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
    <td style="white-space: nowrap">insert_root</td>
    <td style="white-space: nowrap">832.99 B</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">insert_5deep</td>
    <td style="white-space: nowrap">960 B</td>
    <td>1.15x</td>
  </tr>
</table>


