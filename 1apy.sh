#!/usr/bin/env python3

import numpy as np
import pandas as pd

df = pd.read_csv('/home/hillary/cpsc4810/flightdelays.csv')
print(df[df['Origin'] == 'SFO']['ArrDelay'].head(3))
