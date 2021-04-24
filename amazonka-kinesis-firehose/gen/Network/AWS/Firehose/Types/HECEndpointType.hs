{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Firehose.Types.HECEndpointType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Firehose.Types.HECEndpointType
  ( HECEndpointType
      ( ..,
        Event,
        Raw
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data HECEndpointType = HECEndpointType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Event :: HECEndpointType
pattern Event = HECEndpointType' "Event"

pattern Raw :: HECEndpointType
pattern Raw = HECEndpointType' "Raw"

{-# COMPLETE
  Event,
  Raw,
  HECEndpointType'
  #-}

instance FromText HECEndpointType where
  parser = (HECEndpointType' . mk) <$> takeText

instance ToText HECEndpointType where
  toText (HECEndpointType' ci) = original ci

instance Hashable HECEndpointType

instance NFData HECEndpointType

instance ToByteString HECEndpointType

instance ToQuery HECEndpointType

instance ToHeader HECEndpointType

instance ToJSON HECEndpointType where
  toJSON = toJSONText

instance FromJSON HECEndpointType where
  parseJSON = parseJSONText "HECEndpointType"
