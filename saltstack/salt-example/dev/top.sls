dev:
  'db*':
    - users #I must see the user fred is created for the dbs.
    - postgresql #postgresql folder should be created with some contents by user fred.jones.
  'web*':
    - apache
    - users
    - app