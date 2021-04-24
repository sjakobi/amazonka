{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SES.Types.ConfigurationSetAttribute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SES.Types.ConfigurationSetAttribute
  ( ConfigurationSetAttribute
      ( ..,
        DeliveryOptions,
        EventDestinations,
        ReputationOptions,
        TrackingOptions
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ConfigurationSetAttribute
  = ConfigurationSetAttribute'
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

pattern DeliveryOptions :: ConfigurationSetAttribute
pattern DeliveryOptions = ConfigurationSetAttribute' "deliveryOptions"

pattern EventDestinations :: ConfigurationSetAttribute
pattern EventDestinations = ConfigurationSetAttribute' "eventDestinations"

pattern ReputationOptions :: ConfigurationSetAttribute
pattern ReputationOptions = ConfigurationSetAttribute' "reputationOptions"

pattern TrackingOptions :: ConfigurationSetAttribute
pattern TrackingOptions = ConfigurationSetAttribute' "trackingOptions"

{-# COMPLETE
  DeliveryOptions,
  EventDestinations,
  ReputationOptions,
  TrackingOptions,
  ConfigurationSetAttribute'
  #-}

instance FromText ConfigurationSetAttribute where
  parser = (ConfigurationSetAttribute' . mk) <$> takeText

instance ToText ConfigurationSetAttribute where
  toText (ConfigurationSetAttribute' ci) = original ci

instance Hashable ConfigurationSetAttribute

instance NFData ConfigurationSetAttribute

instance ToByteString ConfigurationSetAttribute

instance ToQuery ConfigurationSetAttribute

instance ToHeader ConfigurationSetAttribute
