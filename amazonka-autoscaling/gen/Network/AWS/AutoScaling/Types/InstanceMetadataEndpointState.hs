{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AutoScaling.Types.InstanceMetadataEndpointState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AutoScaling.Types.InstanceMetadataEndpointState
  ( InstanceMetadataEndpointState
      ( ..,
        Disabled,
        Enabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data InstanceMetadataEndpointState
  = InstanceMetadataEndpointState'
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

pattern Disabled :: InstanceMetadataEndpointState
pattern Disabled = InstanceMetadataEndpointState' "disabled"

pattern Enabled :: InstanceMetadataEndpointState
pattern Enabled = InstanceMetadataEndpointState' "enabled"

{-# COMPLETE
  Disabled,
  Enabled,
  InstanceMetadataEndpointState'
  #-}

instance FromText InstanceMetadataEndpointState where
  parser = (InstanceMetadataEndpointState' . mk) <$> takeText

instance ToText InstanceMetadataEndpointState where
  toText (InstanceMetadataEndpointState' ci) = original ci

instance Hashable InstanceMetadataEndpointState

instance NFData InstanceMetadataEndpointState

instance ToByteString InstanceMetadataEndpointState

instance ToQuery InstanceMetadataEndpointState

instance ToHeader InstanceMetadataEndpointState

instance FromXML InstanceMetadataEndpointState where
  parseXML = parseXMLText "InstanceMetadataEndpointState"
