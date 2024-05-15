from sqlalchemy import create_engine
import pandas as pd

engine = create_engine("postgresql://")


import seaborn as sns

iris = sns.load_dataset("iris")
iris.head()

iris.to_sql("iris", engine, if_exists="replace")

iris2 = pd.read_sql("SELECT * FROM iris", engine)

iris2.to_sql("iris2", engine, if_exists="replace")
