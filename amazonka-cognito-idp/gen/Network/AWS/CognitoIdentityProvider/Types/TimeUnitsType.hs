{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.Types.TimeUnitsType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.TimeUnitsType
  ( TimeUnitsType
      ( ..,
        Days,
        Hours,
        Minutes,
        Seconds
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TimeUnitsType = TimeUnitsType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Days :: TimeUnitsType
pattern Days = TimeUnitsType' "days"

pattern Hours :: TimeUnitsType
pattern Hours = TimeUnitsType' "hours"

pattern Minutes :: TimeUnitsType
pattern Minutes = TimeUnitsType' "minutes"

pattern Seconds :: TimeUnitsType
pattern Seconds = TimeUnitsType' "seconds"

{-# COMPLETE
  Days,
  Hours,
  Minutes,
  Seconds,
  TimeUnitsType'
  #-}

instance FromText TimeUnitsType where
  parser = (TimeUnitsType' . mk) <$> takeText

instance ToText TimeUnitsType where
  toText (TimeUnitsType' ci) = original ci

instance Hashable TimeUnitsType

instance NFData TimeUnitsType

instance ToByteString TimeUnitsType

instance ToQuery TimeUnitsType

instance ToHeader TimeUnitsType

instance ToJSON TimeUnitsType where
  toJSON = toJSONText

instance FromJSON TimeUnitsType where
  parseJSON = parseJSONText "TimeUnitsType"
