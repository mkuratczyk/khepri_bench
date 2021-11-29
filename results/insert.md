
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
    <td style="white-space: nowrap; text-align: right">1.98 K</td>
    <td style="white-space: nowrap; text-align: right">505.41 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;40.22%</td>
    <td style="white-space: nowrap; text-align: right">457.52 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">1379.29 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">insert_5deep</td>
    <td style="white-space: nowrap; text-align: right">1.96 K</td>
    <td style="white-space: nowrap; text-align: right">509.37 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;46.52%</td>
    <td style="white-space: nowrap; text-align: right">452.85 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">1404.73 &micro;s</td>
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
    <td style="white-space: nowrap;text-align: right">1.98 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">insert_5deep</td>
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
    <td style="white-space: nowrap">insert_root</td>
    <td style="white-space: nowrap">832.98 B</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">insert_5deep</td>
    <td style="white-space: nowrap">960.19 B</td>
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
    <td style="white-space: nowrap; text-align: right">1.92 K</td>
    <td style="white-space: nowrap; text-align: right">519.84 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;45.65%</td>
    <td style="white-space: nowrap; text-align: right">450.15 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">1386.86 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">insert_5deep</td>
    <td style="white-space: nowrap; text-align: right">1.88 K</td>
    <td style="white-space: nowrap; text-align: right">530.68 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;46.31%</td>
    <td style="white-space: nowrap; text-align: right">452.28 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">1389.10 &micro;s</td>
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
    <td style="white-space: nowrap;text-align: right">1.92 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">insert_5deep</td>
    <td style="white-space: nowrap; text-align: right">1.88 K</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
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
    <td style="white-space: nowrap">833.22 B</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">insert_5deep</td>
    <td style="white-space: nowrap">960.12 B</td>
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
    <td style="white-space: nowrap; text-align: right">1.36 K</td>
    <td style="white-space: nowrap; text-align: right">733.03 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;53.00%</td>
    <td style="white-space: nowrap; text-align: right">500.97 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">1559.14 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">insert_5deep</td>
    <td style="white-space: nowrap; text-align: right">1.34 K</td>
    <td style="white-space: nowrap; text-align: right">746.70 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;53.89%</td>
    <td style="white-space: nowrap; text-align: right">507.09 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">1622.84 &micro;s</td>
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
    <td style="white-space: nowrap;text-align: right">1.36 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">insert_5deep</td>
    <td style="white-space: nowrap; text-align: right">1.34 K</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
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
    <td style="white-space: nowrap">832.88 B</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">insert_5deep</td>
    <td style="white-space: nowrap">960.04 B</td>
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
    <td style="white-space: nowrap">insert_5deep</td>
    <td style="white-space: nowrap; text-align: right">723.42</td>
    <td style="white-space: nowrap; text-align: right">1.38 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;8.80%</td>
    <td style="white-space: nowrap; text-align: right">1.37 ms</td>
    <td style="white-space: nowrap; text-align: right">1.76 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">insert_root</td>
    <td style="white-space: nowrap; text-align: right">712.80</td>
    <td style="white-space: nowrap; text-align: right">1.40 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;8.87%</td>
    <td style="white-space: nowrap; text-align: right">1.38 ms</td>
    <td style="white-space: nowrap; text-align: right">1.82 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">insert_5deep</td>
    <td style="white-space: nowrap;text-align: right">723.42</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">insert_root</td>
    <td style="white-space: nowrap; text-align: right">712.80</td>
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
    <td style="white-space: nowrap">insert_5deep</td>
    <td style="white-space: nowrap">960 B</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">insert_root</td>
    <td style="white-space: nowrap">832.20 B</td>
    <td>0.87x</td>
  </tr>
</table>


