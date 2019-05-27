#!/usr/bin/env python3

import numpy as np
import pandas as pd

df = pd.read_csv('/home/hillary/cpsc4810/flightdelays.csv')
print("Top 3 flights expected to reach the Destination")
print(df['Dest'].value_counts().head(3))
print("Top 3 flights actually to reach the Destination")
print(df[df['Cancelled']==0]['Dest'].value_counts().head(3))
print("Karan Patel")
