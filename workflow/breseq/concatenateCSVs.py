import pandas as pd
import glob

dfs = []
# Read through breseq population outputs and find all associated output.csv files.
for f in glob.glob("output/*_pop_*/output.csv"):
    df = pd.read_csv(f)
    # Extract sample name from parent directory.
    df["sample"] = f.split("/")[-2]
    dfs.append(df)

combined = pd.concat(dfs, ignore_index=True, sort=False)
combined.to_csv("output/combined.csv", index=False)