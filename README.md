# Welcome To SQL Server Examples

## This repo has examples that I use as I learn the T-SQL using the MS SQL Server

### The structure of examples

At the start and end of every sql file, there are some queries that might not be part
of the examples. like:

At the start:

```sql
CREATE DATABASE database1;
GO
USE master;
GO
```

At the end:

```sql
USE master;
DROP DATABASE database1;
```

What this does is that it is creating a database,
Then there is a GO Statement. SQL Server utilities interpret GO as a signal that they
should send the current batch of Transact-SQL statements to an instance of SQL Server.
Next, we have USE statement, which is used to change the context of the database within
the file, so we can delete the database that was created.

### Setup

I am using [Datagrip](https://www.jetbrains.com/datagrip/) by [Jet-brains](https://www.jetbrains.com/) for this project.
