{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.TransitGatewayPropagationState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TransitGatewayPropagationState
  ( TransitGatewayPropagationState
      ( ..,
        TGPSDisabled,
        TGPSDisabling,
        TGPSEnabled,
        TGPSEnabling
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data TransitGatewayPropagationState
  = TransitGatewayPropagationState'
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

pattern TGPSDisabled :: TransitGatewayPropagationState
pattern TGPSDisabled = TransitGatewayPropagationState' "disabled"

pattern TGPSDisabling :: TransitGatewayPropagationState
pattern TGPSDisabling = TransitGatewayPropagationState' "disabling"

pattern TGPSEnabled :: TransitGatewayPropagationState
pattern TGPSEnabled = TransitGatewayPropagationState' "enabled"

pattern TGPSEnabling :: TransitGatewayPropagationState
pattern TGPSEnabling = TransitGatewayPropagationState' "enabling"

{-# COMPLETE
  TGPSDisabled,
  TGPSDisabling,
  TGPSEnabled,
  TGPSEnabling,
  TransitGatewayPropagationState'
  #-}

instance FromText TransitGatewayPropagationState where
  parser = (TransitGatewayPropagationState' . mk) <$> takeText

instance ToText TransitGatewayPropagationState where
  toText (TransitGatewayPropagationState' ci) = original ci

instance Hashable TransitGatewayPropagationState

instance NFData TransitGatewayPropagationState

instance ToByteString TransitGatewayPropagationState

instance ToQuery TransitGatewayPropagationState

instance ToHeader TransitGatewayPropagationState

instance FromXML TransitGatewayPropagationState where
  parseXML = parseXMLText "TransitGatewayPropagationState"
