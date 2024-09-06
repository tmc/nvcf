Hello World

###### Named Arguments [¶](\#named-arguments_repeat6 "Permalink to this headline")

`--debug`

Enable debug mode.

`--format_type`

Possible choices: ascii, csv, json

Specify the output format type. Supported formats are: \['ascii', 'csv', 'json'\]. Only commands that produce tabular data support csv format. Default: ascii

`-y, --yes`

Automatically say yes to all interactive questions.

### list [¶](\#list_repeat1 "Permalink to this headline")

List all accessible organizations.

```
ngc org list [--column <column>] [--debug] [--format_type <fmt>] [-h]
```

#### Named Arguments [¶](\#named-arguments_repeat7 "Permalink to this headline")

`--debug`

Enable debug mode.

`--format_type`

Possible choices: ascii, csv, json

Specify the output format type. Supported formats are: \['ascii', 'csv', 'json'\]. Only commands that produce tabular data support csv format. Default: ascii

`--column`

Specify output column as column\[=header\], header is optional, default is id\[=Id\]. Valid columns are name\[=Name\], description\[=Description\], type\[=Type\]. Use quotes with spaces. Multiple column arguments are allowed.

### info [¶](\#info_repeat1 "Permalink to this headline")

Get organization details.

```
ngc org info [--debug] [--format_type <fmt>] [-h] <org_name>
```

#### Named Arguments [¶](\#named-arguments_repeat10 "Permalink to this headline")

`--debug`

Enable debug mode.

`--format_type`

Possible choices: ascii, csv, json

Specify the output format type. Supported formats are: \['ascii', 'csv', 'json'\]. Only commands that produce tabular data support csv format. Default: ascii

`--role`

Specify the user role. Options: \['BASE\_COMMAND\_ADMIN', 'BASE\_COMMAND\_USER', 'BASE\_COMMAND\_VIEWER', 'FLEET\_COMMAND\_ADMIN', 'FLEET\_COMMAND\_OPERATOR', 'FLEET\_COMMAND\_VIEWER', 'FORGE\_PROVIDER\_ADMIN', 'FORGE\_TENANT\_ADMIN', 'NVIDIA\_AI\_ENTERPRISE\_VIEWER', 'OMNIVERSE\_ADMIN', 'OMNIVERSE\_READ', 'OMNIVERSE\_USER', 'REGISTRY\_ADMIN', 'REGISTRY\_READ', 'REGISTRY\_USER', 'USER\_ADMIN'\]. To specify more than one role, use multiple --role arguments.

`--add-role`

Specify the user role to assign. Options: \[BASE\_COMMAND\_ADMIN, BASE\_COMMAND\_USER, BASE\_COMMAND\_VIEWER, FLEET\_COMMAND\_ADMIN, FLEET\_COMMAND\_OPERATOR, FLEET\_COMMAND\_VIEWER, FORGE\_PROVIDER\_ADMIN, FORGE\_TENANT\_ADMIN, NVIDIA\_AI\_ENTERPRISE\_VIEWER, OMNIVERSE\_ADMIN, OMNIVERSE\_READ, OMNIVERSE\_USER, REGISTRY\_ADMIN, REGISTRY\_READ, REGISTRY\_USER, USER\_ADMIN\]. To specify more than one role, use multiple --add-role arguments.

`--remove-role`

Specify the user role to remove. Options: \[BASE\_COMMAND\_ADMIN, BASE\_COMMAND\_USER, BASE\_COMMAND\_VIEWER, FLEET\_COMMAND\_ADMIN, FLEET\_COMMAND\_OPERATOR, FLEET\_COMMAND\_VIEWER, FORGE\_PROVIDER\_ADMIN, FORGE\_TENANT\_ADMIN, NVIDIA\_AI\_ENTERPRISE\_VIEWER, OMNIVERSE\_ADMIN, OMNIVERSE\_READ, OMNIVERSE\_USER, REGISTRY\_ADMIN, REGISTRY\_READ, REGISTRY\_USER, USER\_ADMIN\]. To specify more than one role, use multiple --remove-role arguments.

### remove-user [¶](\#remove-user "Permalink to this headline")

(For administrators only) Remove a user from the current organization.

```
ngc org remove-user [--debug] [--format_type <fmt>] [-h] [-y] <id>
```

#### Named Arguments [¶](\#named-arguments_repeat12 "Permalink to this headline")

`--debug`

Enable debug mode.

`--format_type`

Possible choices: ascii, csv, json

Specify the output format type. Supported formats are: \['ascii', 'csv', 'json'\]. Only commands that produce tabular data support csv format. Default: ascii

`-y, --yes`

Automatically say yes to all interactive questions.

### list-users [¶](\#list-users "Permalink to this headline")

(For administrators only) List all users in the current organization.

```
ngc org list-users [--column <column>] [--debug] [--email <email>]
                   [--format_type <fmt>] [--invited] [--joined] [-h]
```

#### Named Arguments [¶](\#named-arguments_repeat13 "Permalink to this headline")

`--debug`

Enable debug mode.

`--format_type`

Possible choices: ascii, csv, json

Specify the output format type. Supported formats are: \['ascii', 'csv', 'json'\]. Only commands that produce tabular data support csv format. Default: ascii

`--joined`

Only list users that have joined.

`--invited`

Only list invited users.

`--column`

Specify output column as column\[=header\], header is optional, default is id\[=Id\]. Valid columns are name\[=Name\], email\[=Email\], roles\[=Roles\], created\[="Created Date"\], type\[="Invitation Type"\], firstLoginDate\[="First Login Date"\], lastLoginDate\[="Last Activity"\], idpType\[="Sign In Method"\]. Use quotes with spaces. Multiple column arguments are allowed.

`--email`

Filter users by email.

### add-team [¶](\#add-team "Permalink to this headline")

(For administrators only) Add (create) a team in the current organization.

```
ngc org add-team [--debug] [--format_type <fmt>] [-h] <name> <description>
```

### How to list orgs using column arguments? [¶](\#how-to-list-orgs-using-column-arguments "Permalink to this headline")

```
$ ngc org list --column name --column type='Org Type'

+------+---------+----------+
| Id   | Name    | Org Type |
+------+---------+----------+
| 9441 | nvexmpl | CLOUD    |
| 91   | robot   | CLOUD    |
+------+---------+----------+
```

### How to get org details? [¶](\#how-to-get-org-details "Permalink to this headline")

```
$ ngc org info robot

----------------------------------------------------
 Org Information
  Id: 1
  Name: nvidia
  Description: nvidia
  Type: CLOUD
----------------------------------------------------
```

### How to list users in current org? [¶](\#how-to-list-users-in-current-org "Permalink to this headline")

```
$ ngc org list-users

+------+---------+-------------------+---------------------+--------------------------+
| Id   | Name    | Email             | Roles               | Created Date             |
+------+---------+-------------------+---------------------+--------------------------+
| 0001 | Admin1  | admin1@nvidia.com | BASE_COMMAND_ADMIN  | 2018-01-01T00:01:00.000Z |
| 0004 | User1   | user1@nvidia.com  | BASE_COMMAND_USER   | 2018-01-04T00:03:00.000Z |
| 0002 | Admin2  | admin2@nvidia.com | BASE_COMMAND_ADMIN  | 2018-01-02T00:12:00.000Z |
| 0003 | Viewer1 | admin3@nvidia.com | BASE_COMMAND_VIEWER | 2018-01-03T00:07:00.000Z |
+------+---------+-------------------+---------------------+--------------------------+
```

### How to list users in current org using column arguments? [¶](\#how-to-list-users-in-current-org-using-column-arguments "Permalink to this headline")

```
$ ngc org list-users --column name --column roles

+------+---------+---------------------+
| Id   | Name    | Roles               |
+------+---------+---------------------+
| 0001 | Admin1  | BASE_COMMAND_ADMIN  |
| 0004 | User1   | BASE_COMMAND_USER   |
| 0002 | Admin2  | BASE_COMMAND_ADMIN  |
| 0003 | Viewer1 | BASE_COMMAND_VIEWER |
+------+---------+---------------------+
```

### How to add user to an org? [¶](\#how-to-add-user-to-an-org "Permalink to this headline")

```
$ ngc org add-user foobar@nvidia.com FooBar --role BASE_COMMAND_USER

User foobar@nvidia.com has been added to org nvidia as {'BASE_COMMAND_USER'}.
+---------+--------+-------------------+----------------------------+
| User Id | Name   | Email             | Org [Roles]                |
+---------+--------+-------------------+----------------------------+
| 11026   | FooBar | foobar@nvidia.com | nvidia [BASE_COMMAND_USER] |
+---------+--------+-------------------+----------------------------+
```

### How to update user role? [¶](\#how-to-update-user-role "Permalink to this headline")

```
$ ngc org update-user foobar@nvidia.com -r BASE_COMMAND_ADMIN

User foobar@nvidia.com information updated.
+---------+---------+-----------------------+-----------------------------------+
| User Id | Name    | Email                 | Org [Roles]                       |
+---------+---------+-----------------------+-----------------------------------+
| 481     | FooBar  | foobar@nvidia.com     | b0xlotzw8zo9 [BASE_COMMAND_ADMIN] |
+---------+---------+-----------------------+-----------------------------------+

$ ngc org update-user foobar@nvidia.com -r BASE_COMMAND_USER

User foobar@nvidia.com information updated.
+---------+---------+-----------------------+----------------------------------+
| User Id | Name    | Email                 | Org [Roles]                      |
+---------+---------+-----------------------+----------------------------------+
| 481     | FooBar  | foobar@nvidia.com     | b0xlotzw8zo9 [BASE_COMMAND_USER] |
+---------+---------+-----------------------+----------------------------------+
```

### How to remove user from an org? [¶](\#how-to-remove-user-from-an-org "Permalink to this headline")

```
$ ngc org remove-user foobar@nvidia.com

User: foobar@nvidia.com deleted from org: b0xlotzw8zo9.
```

### How to create team inside an org? [¶](\#how-to-create-team-inside-an-org "Permalink to this headline")

```
$ ngc org add-team cosmos "Cosmos team"

Team created.
----------------------------------------------------
  Team Information
    Id: 161
    Name: cosmos
    Description: Cosmos team
    Deleted: False
----------------------------------------------------
```

### How to update team description inside an org? [¶](\#how-to-update-team-description-inside-an-org "Permalink to this headline")

```
$ ngc org update-team cosmos "Updated description"

Team cosmos information updated.
----------------------------------------------------
  Team Information
    Id: 161
    Name: cosmos
    Description: Updated description
    Deleted: False
----------------------------------------------------
```

### How to remove team from an org? [¶](\#how-to-remove-team-from-an-org "Permalink to this headline")

```
$ ngc org remove-team cosmos "Cosmos team"

Team: cosmos removed from org: b0xlotzw8zo9.
```
