Hello World

#### Named Arguments [¶](\#named-arguments_repeat3 "Permalink to this headline")

`--debug`

Enable debug mode.

`--format_type`

Possible choices: ascii, csv, json

Specify the output format type. Supported formats are: \['ascii', 'csv', 'json'\]. Only commands that produce tabular data support csv format. Default: ascii

`--name`

User Display Name. Only required for new users.

`--org-role`

(For org administrators only) Specify the user role in the org, required to add a new user in the org. Updates user roles in the org if the user exists in the org. Options: \[BASE\_COMMAND\_ADMIN, BASE\_COMMAND\_USER, BASE\_COMMAND\_VIEWER, FLEET\_COMMAND\_ADMIN, FLEET\_COMMAND\_OPERATOR, FLEET\_COMMAND\_VIEWER, FORGE\_PROVIDER\_ADMIN, FORGE\_TENANT\_ADMIN, NVIDIA\_AI\_ENTERPRISE\_VIEWER, OMNIVERSE\_ADMIN, OMNIVERSE\_READ, OMNIVERSE\_USER, REGISTRY\_ADMIN, REGISTRY\_READ, REGISTRY\_USER, USER\_ADMIN\]. To specify more than one org role, use multiple --org-role arguments.

#### Required named arguments [¶](\#required-named-arguments "Permalink to this headline")

`--role`

Specify the user role. Options: \[BASE\_COMMAND\_ADMIN, BASE\_COMMAND\_USER, BASE\_COMMAND\_VIEWER, FLEET\_COMMAND\_ADMIN, FLEET\_COMMAND\_OPERATOR, FLEET\_COMMAND\_VIEWER, FORGE\_PROVIDER\_ADMIN, FORGE\_TENANT\_ADMIN, NVIDIA\_AI\_ENTERPRISE\_VIEWER, OMNIVERSE\_ADMIN, OMNIVERSE\_READ, OMNIVERSE\_USER, REGISTRY\_ADMIN, REGISTRY\_READ, REGISTRY\_USER, USER\_ADMIN\]. To specify more than one role, use multiple --role arguments.

### update-user [¶](\#update-user "Permalink to this headline")

(For administrators only) Update a user's roles in the current team.

```
ngc team update-user [--add-role <add_role>] [--debug] [--format_type <fmt>]
                     [--remove-role <remove_role>] [--role <role>] [-h]
                     <id>
```

#### Named Arguments [¶](\#named-arguments_repeat4 "Permalink to this headline")

`--debug`

Enable debug mode.

`--format_type`

Possible choices: ascii, csv, json

Specify the output format type. Supported formats are: \['ascii', 'csv', 'json'\]. Only commands that produce tabular data support csv format. Default: ascii

`--role`

Specify the user role. Options: \[BASE\_COMMAND\_ADMIN, BASE\_COMMAND\_USER, BASE\_COMMAND\_VIEWER, FLEET\_COMMAND\_ADMIN, FLEET\_COMMAND\_OPERATOR, FLEET\_COMMAND\_VIEWER, FORGE\_PROVIDER\_ADMIN, FORGE\_TENANT\_ADMIN, NVIDIA\_AI\_ENTERPRISE\_VIEWER, OMNIVERSE\_ADMIN, OMNIVERSE\_READ, OMNIVERSE\_USER, REGISTRY\_ADMIN, REGISTRY\_READ, REGISTRY\_USER, USER\_ADMIN\]. To specify more than one role, use multiple --role arguments.

`--add-role`

Specify the user role to assign. Options: \[BASE\_COMMAND\_ADMIN, BASE\_COMMAND\_USER, BASE\_COMMAND\_VIEWER, FLEET\_COMMAND\_ADMIN, FLEET\_COMMAND\_OPERATOR, FLEET\_COMMAND\_VIEWER, FORGE\_PROVIDER\_ADMIN, FORGE\_TENANT\_ADMIN, NVIDIA\_AI\_ENTERPRISE\_VIEWER, OMNIVERSE\_ADMIN, OMNIVERSE\_READ, OMNIVERSE\_USER, REGISTRY\_ADMIN, REGISTRY\_READ, REGISTRY\_USER, USER\_ADMIN\]. To specify more than one role, use multiple --add-role arguments.

`--remove-role`

Specify the user role to remove. Options: \[BASE\_COMMAND\_ADMIN, BASE\_COMMAND\_USER, BASE\_COMMAND\_VIEWER, FLEET\_COMMAND\_ADMIN, FLEET\_COMMAND\_OPERATOR, FLEET\_COMMAND\_VIEWER, FORGE\_PROVIDER\_ADMIN, FORGE\_TENANT\_ADMIN, NVIDIA\_AI\_ENTERPRISE\_VIEWER, OMNIVERSE\_ADMIN, OMNIVERSE\_READ, OMNIVERSE\_USER, REGISTRY\_ADMIN, REGISTRY\_READ, REGISTRY\_USER, USER\_ADMIN\]. To specify more than one role, use multiple --remove-role arguments.

### remove-user [¶](\#remove-user "Permalink to this headline")

(For administrators only) Remove a user from the current team.

```
ngc team remove-user [--debug] [--format_type <fmt>] [-h] [-y] <id>
```

#### Named Arguments [¶](\#named-arguments_repeat6 "Permalink to this headline")

`--debug`

Enable debug mode.

`--format_type`

Possible choices: ascii, csv, json

Specify the output format type. Supported formats are: \['ascii', 'csv', 'json'\]. Only commands that produce tabular data support csv format. Default: ascii

`-y, --yes`

Automatically say yes to all interactive questions.

### list-users [¶](\#list-users "Permalink to this headline")

(For administrators only) List all users in the current team.

```
ngc team list-users [--column <column>] [--debug] [--email <email>]
                    [--format_type <fmt>] [--invited] [--joined] [-h]
```

#### Named Arguments [¶](\#named-arguments_repeat7 "Permalink to this headline")

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

### How to list teams using column arguments? [¶](\#how-to-list-teams-using-column-arguments "Permalink to this headline")

```
$ ngc team list --column name

+-----+------------+
| Id  | Name       |
+-----+------------+
| 393 | robot-team |
+-----+------------+
```

### How to get team details? [¶](\#how-to-get-team-details "Permalink to this headline")

```
$ ngc team info cosmos

----------------------------------------------------
  Team Information
    Id: 161
    Name: cosmos
    Description: Cosmos team
    Deleted: False
----------------------------------------------------
```

### How to list users in team? [¶](\#how-to-list-users-in-team "Permalink to this headline")

```
$ ngc team list-users --team cosmos

+------+---------+-------------------+---------------------+--------------------------+
| Id   | Name    | Email             | Roles               | Created Date             |
+------+---------+-------------------+---------------------+--------------------------+
| 0001 | Admin1  | admin1@nvidia.com | BASE_COMMAND_ADMIN  | 2018-01-01T00:01:00.000Z |
| 0004 | User1   | user1@nvidia.com  | BASE_COMMAND_USER   | 2018-01-04T00:03:00.000Z |
| 0002 | Admin2  | admin2@nvidia.com | BASE_COMMAND_ADMIN  | 2018-01-02T00:12:00.000Z |
| 0003 | Viewer1 | admin3@nvidia.com | BASE_COMMAND_VIEWER | 2018-01-03T00:07:00.000Z |
+------+---------+-------------------+---------------------+--------------------------+
```

### How to list users in team using column arguments? [¶](\#how-to-list-users-in-team-using-column-arguments "Permalink to this headline")

```
$ ngc team list-users --team cosmos --column name --column roles

+------+---------+---------------------+
| Id   | Name    | Roles               |
+------+---------+---------------------+
| 0001 | Admin1  | BASE_COMMAND_ADMIN  |
| 0004 | User1   | BASE_COMMAND_USER   |
| 0002 | Admin2  | BASE_COMMAND_ADMIN  |
| 0003 | Viewer1 | BASE_COMMAND_VIEWER |
+------+---------+---------------------+
```

### How to add user to an team? [¶](\#how-to-add-user-to-an-team "Permalink to this headline")

```
$ ngc team add-user foobar@nvidia.com --team cosmos --role BASE_COMMAND_USER

User: foobar@nvidia.com added to team: cosmos as {'BASE_COMMAND_USER'}.
```

### How to update user role? [¶](\#how-to-update-user-role "Permalink to this headline")

```
$ ngc team update-user foobar@nvidia.com BASE_COMMAND_ADMIN --team cosmos

User foobar@nvidia.com information updated.
+---------+--------+-------------------+--------------+-----------------------------+-------------------------+
| User Id | Name   | Email             | Org          | Teams [Roles]               | Created Date            |
+---------+--------+-------------------+--------------+-----------------------------+-------------------------+
| 481     | FooBar | foobar@nvidia.com | b0xlotzw8zo9 | cosmos [BASE_COMMAND_ADMIN] | 2018-01-01 00:00:00 UTC |
+---------+--------+-------------------+--------------+-----------------------------+-------------------------+

$ ngc team update-user foobar@nvidia.com BASE_COMMAND_USER --team cosmos

User foobar@nvidia.com information updated.
+---------+--------+-------------------+--------------+----------------------------+-------------------------+
| User Id | Name   | Email             | Org          | Teams [Roles]              | Created Date            |
+---------+--------+-------------------+--------------+----------------------------+-------------------------+
| 481     | FooBar | foobar@nvidia.com | b0xlotzw8zo9 | cosmos [BASE_COMMAND_USER] | 2018-01-01 00:00:00 UTC |
+---------+--------+-------------------+--------------+----------------------------+-------------------------+
```

### How to remove user from an team? [¶](\#how-to-remove-user-from-an-team "Permalink to this headline")

```
$ ngc team remove-user foobar@nvidia.com --team cosmos

User: foobar@nvidia.com removed from team: cosmos in org: b0xlotzw8zo9.
```
