

# What I'm trying to do

1. Make DbUp work with CockroachDb
a. Fails because of bad typecasting when checking database result (Fixed in 0574af7/fix-invalidcastexception)
b. Fails because entire files are passed to query processor because SplitScriptIntoCommands suxor

2. Make DbUp cause fewer problems with YugabyteDb during initialization
a. Perhaps sending multiple commands to YugabyteDb is causing problems? Fixing SplitScriptIntoCommands might help?

# What are the problems?

- The original SplitScriptIntoCommands parser doesn't actually do anything!
- My replacement which uses SqlCommandReader doesn't handle `$$` and `$THING$` string operators, and so semicolons inside string blocks get split
