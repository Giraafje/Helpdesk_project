import pandas as pd
from datetime import datetime
import plotly.express as px
import plotly.graph_objects as go

df = pd.read_csv('issues_per_day.csv')
df['created_on_issues'] = pd.to_datetime(df['created_on_issues'])
df['created_on_issues'] = df['created_on_issues'].dt.strftime('%Y_%m_%d')
filtered_df = df.loc[df['name'] == 'some_project', :]


fig = go.Figure()
fig = px.bar(filtered_df, x="created_on_issues", y="cnt_issues_perday", color="name")
fig.update_layout(
    title="Jak přibývají issues do projektů",
    xaxis=dict(
        title="Datum"
    ),
    yaxis=dict(
        title="Počet issues"
    ) ) 
fig.update_xaxes(categoryorder='category ascending')
fig.show()