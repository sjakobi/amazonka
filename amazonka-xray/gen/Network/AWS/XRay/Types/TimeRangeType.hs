{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.XRay.Types.TimeRangeType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.XRay.Types.TimeRangeType
  ( TimeRangeType
      ( ..,
        Event,
        TraceId
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TimeRangeType = TimeRangeType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Event :: TimeRangeType
pattern Event = TimeRangeType' "Event"

pattern TraceId :: TimeRangeType
pattern TraceId = TimeRangeType' "TraceId"

{-# COMPLETE
  Event,
  TraceId,
  TimeRangeType'
  #-}

instance FromText TimeRangeType where
  parser = (TimeRangeType' . mk) <$> takeText

instance ToText TimeRangeType where
  toText (TimeRangeType' ci) = original ci

instance Hashable TimeRangeType

instance NFData TimeRangeType

instance ToByteString TimeRangeType

instance ToQuery TimeRangeType

instance ToHeader TimeRangeType

instance ToJSON TimeRangeType where
  toJSON = toJSONText
