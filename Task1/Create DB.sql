CREATE DATABASE Bookstore
ON(
NAME=Bookstore_dat,
FILENAME ='D:\Bookstore_mdf',
SIZE=10mb,
MAXSIZE=100mb
)

LOG ON(
NAME=Bookstore_log,
FILENAME ='D:\Bookstore_ldf',
SIZE=10mb,
MAXSIZE=100mb
)
COLLATE Latin1_General_CI_AS
