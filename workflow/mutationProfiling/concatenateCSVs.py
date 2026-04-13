import pandas as pd
import glob
import re

dfs = []
# Read through output .csv files.
for f in glob.glob("output/*.csv"):
    df = pd.read_csv(f)
    # Extract sample name.
    df["sample"] = re.sub(r'^output/mutDiff-|-RP62a\.csv$','',f)
    dfs.append(df)

combined = pd.concat(dfs, ignore_index=True, sort=False)
combined.to_csv("output/combined.csv", index=False)