{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AutoScalingPlans.Types.PredictiveScalingMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AutoScalingPlans.Types.PredictiveScalingMode
  ( PredictiveScalingMode
      ( ..,
        ForecastAndScale,
        ForecastOnly
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data PredictiveScalingMode
  = PredictiveScalingMode'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ForecastAndScale :: PredictiveScalingMode
pattern ForecastAndScale = PredictiveScalingMode' "ForecastAndScale"

pattern ForecastOnly :: PredictiveScalingMode
pattern ForecastOnly = PredictiveScalingMode' "ForecastOnly"

{-# COMPLETE
  ForecastAndScale,
  ForecastOnly,
  PredictiveScalingMode'
  #-}

instance FromText PredictiveScalingMode where
  parser = (PredictiveScalingMode' . mk) <$> takeText

instance ToText PredictiveScalingMode where
  toText (PredictiveScalingMode' ci) = original ci

instance Hashable PredictiveScalingMode

instance NFData PredictiveScalingMode

instance ToByteString PredictiveScalingMode

instance ToQuery PredictiveScalingMode

instance ToHeader PredictiveScalingMode

instance ToJSON PredictiveScalingMode where
  toJSON = toJSONText

instance FromJSON PredictiveScalingMode where
  parseJSON = parseJSONText "PredictiveScalingMode"
