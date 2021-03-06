//+------------------------------------------------------------------+
//|                                                       Monkey.mq4 |
//|                                 Copyright © 2017, Matthew Kastor |
//|                                 https://github.com/matthewkastor |
//+------------------------------------------------------------------+
#property copyright "Matthew Kastor"
#property link      "https://github.com/matthewkastor"
#property description "Current Experiment."
#property strict

#include <EA\Monkey\Monkey.mqh>
#include <EA\Monkey\MonkeySettings.mqh>
#include <EA\Monkey\MonkeyConfig.mqh>

Monkey *bot;
#include <EA\PortfolioManagerBasedBot\BasicEATemplate.mqh>
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void init()
  {
   MonkeyConfig config;

   GetBasicConfigs(config);

   config.monkeySignal.Period=BotTrendPeriod;
   config.monkeySignal.Timeframe=PortfolioTimeframe;
   config.monkeySignal.Shift=0;
   config.monkeySignal.MinimumTpSlDistance=BotMinimumTpSlDistance;
   config.monkeySignal.IndicatorColor=BotAtrIndicatorColor;
   
   config.monkeySignal.AtrPeriod=BotAtrPeriod;
   config.monkeySignal.AtrTriggerLevel=BotAtrTriggerLevel;
   config.monkeySignal.AtrExitsMultiplier=BotAtrExitsMultiplier;
   config.monkeySignal.RangePeriod=BotRangePeriod;
   config.monkeySignal.RangeShift=BotRangeShift;
   config.monkeySignal.RangeNullZoneWidth=(double)(BotRangeNullZoneWidth/100.0);
   config.monkeySignal.TrendPeriod=BotTrendPeriod;
   config.monkeySignal.TrendShift=BotTrendShift;
   config.monkeySignal.TrendBufferWidth=(double)(BotTrendBufferWidth/100.0);
   config.monkeySignal.IndicatorColorAtr=config.monkeySignal.IndicatorColor;
   config.monkeySignal.IndicatorColorArrows=BotIndicatorColorArrows;
   config.monkeySignal.IndicatorColorRangeNull=BotIndicatorColorRangeNull;
   config.monkeySignal.IndicatorColorTrendNull=BotIndicatorColorTrendNull;

   config.monkeySignal.RsiBands.Period=BotRsiPeriod;
   config.monkeySignal.RsiBands.Timeframe=config.monkeySignal.Timeframe;
   config.monkeySignal.RsiBands.Shift=0;
   config.monkeySignal.RsiBands.MinimumTpSlDistance=config.monkeySignal.MinimumTpSlDistance;
   config.monkeySignal.RsiBands.AppliedPrice=PRICE_CLOSE;
   config.monkeySignal.RsiBands.IndicatorColor=config.monkeySignal.IndicatorColor;
   config.monkeySignal.RsiBands.Wideband.High=BotRsiWidebandHigh;
   config.monkeySignal.RsiBands.Wideband.Low=BotRsiWidebandLow;
   config.monkeySignal.RsiBands.Midband.High=BotRsiMidbandHigh;
   config.monkeySignal.RsiBands.Midband.Low=BotRsiMidbandLow;
   config.monkeySignal.RsiBands.Nullband.High=BotRsiNullbandHigh;
   config.monkeySignal.RsiBands.Nullband.Low=BotRsiNullbandLow;
   
   config.monkeySignal.AdxSignal.Period=BotAdxPeriod;
   config.monkeySignal.AdxSignal.Timeframe=config.monkeySignal.Timeframe;
   config.monkeySignal.AdxSignal.Shift=0;
   config.monkeySignal.AdxSignal.MinimumTpSlDistance=config.monkeySignal.MinimumTpSlDistance;
   config.monkeySignal.AdxSignal.AppliedPrice=PRICE_CLOSE;
   config.monkeySignal.AdxSignal.IndicatorColor=config.monkeySignal.IndicatorColor;
   config.monkeySignal.AdxSignal.Threshold=BotAdxThreshold;

   bot=new Monkey(config);
  }
//+------------------------------------------------------------------+
