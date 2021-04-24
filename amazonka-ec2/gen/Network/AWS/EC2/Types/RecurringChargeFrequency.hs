{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.RecurringChargeFrequency
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.RecurringChargeFrequency
  ( RecurringChargeFrequency
      ( ..,
        Hourly
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data RecurringChargeFrequency
  = RecurringChargeFrequency'
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

pattern Hourly :: RecurringChargeFrequency
pattern Hourly = RecurringChargeFrequency' "Hourly"

{-# COMPLETE
  Hourly,
  RecurringChargeFrequency'
  #-}

instance FromText RecurringChargeFrequency where
  parser = (RecurringChargeFrequency' . mk) <$> takeText

instance ToText RecurringChargeFrequency where
  toText (RecurringChargeFrequency' ci) = original ci

instance Hashable RecurringChargeFrequency

instance NFData RecurringChargeFrequency

instance ToByteString RecurringChargeFrequency

instance ToQuery RecurringChargeFrequency

instance ToHeader RecurringChargeFrequency

instance FromXML RecurringChargeFrequency where
  parseXML = parseXMLText "RecurringChargeFrequency"
