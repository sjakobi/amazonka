{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.OfferingDurationUnits
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.OfferingDurationUnits
  ( OfferingDurationUnits
      ( ..,
        Months
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Units for duration, e.g. 'MONTHS'
data OfferingDurationUnits
  = OfferingDurationUnits'
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

pattern Months :: OfferingDurationUnits
pattern Months = OfferingDurationUnits' "MONTHS"

{-# COMPLETE
  Months,
  OfferingDurationUnits'
  #-}

instance FromText OfferingDurationUnits where
  parser = (OfferingDurationUnits' . mk) <$> takeText

instance ToText OfferingDurationUnits where
  toText (OfferingDurationUnits' ci) = original ci

instance Hashable OfferingDurationUnits

instance NFData OfferingDurationUnits

instance ToByteString OfferingDurationUnits

instance ToQuery OfferingDurationUnits

instance ToHeader OfferingDurationUnits

instance FromJSON OfferingDurationUnits where
  parseJSON = parseJSONText "OfferingDurationUnits"
