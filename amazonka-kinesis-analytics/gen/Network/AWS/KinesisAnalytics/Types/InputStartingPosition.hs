{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KinesisAnalytics.Types.InputStartingPosition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisAnalytics.Types.InputStartingPosition
  ( InputStartingPosition
      ( ..,
        LastStoppedPoint,
        Now,
        TrimHorizon
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data InputStartingPosition
  = InputStartingPosition'
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

pattern LastStoppedPoint :: InputStartingPosition
pattern LastStoppedPoint = InputStartingPosition' "LAST_STOPPED_POINT"

pattern Now :: InputStartingPosition
pattern Now = InputStartingPosition' "NOW"

pattern TrimHorizon :: InputStartingPosition
pattern TrimHorizon = InputStartingPosition' "TRIM_HORIZON"

{-# COMPLETE
  LastStoppedPoint,
  Now,
  TrimHorizon,
  InputStartingPosition'
  #-}

instance FromText InputStartingPosition where
  parser = (InputStartingPosition' . mk) <$> takeText

instance ToText InputStartingPosition where
  toText (InputStartingPosition' ci) = original ci

instance Hashable InputStartingPosition

instance NFData InputStartingPosition

instance ToByteString InputStartingPosition

instance ToQuery InputStartingPosition

instance ToHeader InputStartingPosition

instance ToJSON InputStartingPosition where
  toJSON = toJSONText

instance FromJSON InputStartingPosition where
  parseJSON = parseJSONText "InputStartingPosition"
