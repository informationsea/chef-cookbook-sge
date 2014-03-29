sgebuild Cookbook
=================
Prepare [Son of GridEngine](https://arc.liv.ac.uk/trac/SGE)
installation. This cookbook cannot install SGE, but all depended
packages will be installed.

Requirements
------------
#### operation system
- CentOS 6.x

Attributes
----------

#### sgebuild::master
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>["sge"]["sgeuser"]</tt></td>
    <td>String</td>
    <td>Unix user for SGE</td>
    <td><tt>sge</tt></td>
  </tr>
  <tr>
    <td><tt>["sge"]["version"]</tt></td>
    <td>String</td>
    <td>Version of SGE</td>
    <td><tt>8.1.6</tt></td>
  </tr>
  <tr>
    <td><tt>["sge"]["url"]</tt></td>
    <td>String</td>
    <td>Base URL of SGE rpm site</td>
    <td><tt>http://arc.liv.ac.uk/downloads/SGE/releases/</tt></td>
  </tr>
</table>

Usage
-----

Use `sge::master` for an administration host and use `seg::default` for
execution hosts.

#### sge::default
Just include `sge` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[sgebuild]"
  ]
}
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: OKAMURA Yasunobu (okamura@informationsea.info)
