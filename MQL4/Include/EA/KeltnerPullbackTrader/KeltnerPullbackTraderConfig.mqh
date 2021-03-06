//+------------------------------------------------------------------+
//|                                  KeltnerPullbackTraderConfig.mqh |
//|                                 Copyright © 2017, Matthew Kastor |
//|                                 https://github.com/matthewkastor |
//+------------------------------------------------------------------+
#property copyright "Matthew Kastor"
#property link      "https://github.com/matthewkastor"
#property strict

#include <EA\PortfolioManagerBasedBot\BasePortfolioManagerBotConfig.mqh>
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
struct KeltnerPullbackTraderConfig : public BasePortfolioManagerBotConfig
  {
public:
   int               keltnerPullbackMaPeriod;
   int               keltnerPullbackMaShift;
   ENUM_MA_METHOD    keltnerPullbackMaMethod;
   ENUM_APPLIED_PRICE keltnerPullbackMaAppliedPrice;
   int               keltnerPullbackMaColor;
   int               keltnerPullbackAtrPeriod;
   double            keltnerPullbackAtrMultiplier;
   double            atrSkew;
   int               keltnerPullbackShift;
   int               keltnerPullbackAtrColor;
   double            keltnerPullbackMinimumTpSlDistance;
   ENUM_TIMEFRAMES   keltnerPullbackTimeframe;
   int               parallelSignals;
  };
//+------------------------------------------------------------------+
