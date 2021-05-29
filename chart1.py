import pandas as pd
import plotly.express as px
import plotly.graph_objects as go

df = pd.read_csv('a_first_question.csv')

year = []
month = []

for index, row in df.iterrows():
    year.append(str(row['year_month'])[0:4])
    month.append(str(row['year_month'])[4:6])
    
df['year'] = year
df['month'] = month
df['date'] = df['month'] + '-' + df['year']
df['date'] = pd.to_datetime(df['date'])
df['date'] = df['date'].dt.strftime('%Y_%m')

to_be_excluded = ["Chyba", "Balíček"]
filtered_df = df.loc[~df['name_trackers'].isin(to_be_excluded), :]

fig = go.Figure()
fig = px.box(filtered_df, x="date", y="median_isses_duration", color="name_trackers", labels={
                     "name_trackers": "Druh požadavku"
                 })
fig.update_layout(
    title="Mediánová doba jednotlivých požadavků v čase",
    xaxis=dict(
        title="Rok a měsíc"
    ),
    yaxis=dict(
        title="Mediánová délka vyřízení požadavku ve dnech"
    ) ) 
fig.update_xaxes(categoryorder='category ascending')
fig.update_traces(quartilemethod="exclusive") # or "inclusive", or "linear" by default
fig.show()
