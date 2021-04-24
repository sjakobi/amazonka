{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.LaunchTemplateInstanceMetadataEndpointState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.LaunchTemplateInstanceMetadataEndpointState
  ( LaunchTemplateInstanceMetadataEndpointState
      ( ..,
        Disabled,
        Enabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data LaunchTemplateInstanceMetadataEndpointState
  = LaunchTemplateInstanceMetadataEndpointState'
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

pattern Disabled :: LaunchTemplateInstanceMetadataEndpointState
pattern Disabled = LaunchTemplateInstanceMetadataEndpointState' "disabled"

pattern Enabled :: LaunchTemplateInstanceMetadataEndpointState
pattern Enabled = LaunchTemplateInstanceMetadataEndpointState' "enabled"

{-# COMPLETE
  Disabled,
  Enabled,
  LaunchTemplateInstanceMetadataEndpointState'
  #-}

instance FromText LaunchTemplateInstanceMetadataEndpointState where
  parser = (LaunchTemplateInstanceMetadataEndpointState' . mk) <$> takeText

instance ToText LaunchTemplateInstanceMetadataEndpointState where
  toText (LaunchTemplateInstanceMetadataEndpointState' ci) = original ci

instance Hashable LaunchTemplateInstanceMetadataEndpointState

instance NFData LaunchTemplateInstanceMetadataEndpointState

instance ToByteString LaunchTemplateInstanceMetadataEndpointState

instance ToQuery LaunchTemplateInstanceMetadataEndpointState

instance ToHeader LaunchTemplateInstanceMetadataEndpointState

instance FromXML LaunchTemplateInstanceMetadataEndpointState where
  parseXML = parseXMLText "LaunchTemplateInstanceMetadataEndpointState"
