### Block All sites you dont want access to

#### STEPS

1. clone the repo 

``` git clone https://github.com/skeeperloyaltie/block.git```

2. Run the file

``` sudo bash blobk/block.sh```

3. Create a con job to make this persistent

```crontab -e```

```0 * * * * ~/block/block.sh```

### Perfect . 

## WE done here