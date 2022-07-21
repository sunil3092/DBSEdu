from matplotlib import ticker
import yfinance as yf
import streamlit as st
import pandas as pd

st.write("""
# Simple Stock App
""")

tickersymbol = 'GOOGL'
tickerdata = yf.Ticker(tickersymbol)
tikerDf = tickerdata.history(period='1d', start='2010-5-31', end='2020-5-31')
st.line_chart(tikerDf.Close)
st.line_chart(tikerDf.Volume)
