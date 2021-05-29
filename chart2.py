import pandas as pd
import plotly.express as px
import plotly.graph_objects as go

df = pd.read_csv('a_first_question.csv')
to_be_excluded = ["Chyba", "Balíček"]
filtered_df = df.loc[~df['name_trackers'].isin(to_be_excluded), :]

fig = go.Figure()
fig = px.box(filtered_df, x="name_trackers", y="median_isses_duration", color="name_enumerations",
            color_discrete_map={
                "Normální": "orange",
                "Vysoká": "red",
                "Nízká": "green"},
            labels={
                     "name_enumerations": "Priorita"
                 })
fig.update_layout(
    title="Mediánová doba jednotlivých požadavků podle priorit",
    xaxis=dict(
        title="Druh požadavku"
    ),
    yaxis=dict(
        title="Mediánová délka vyřízení požadavku ve dnech"
    ) ) 
fig.update_xaxes(categoryorder='category descending')
fig.update_traces(quartilemethod="exclusive")
fig.show()