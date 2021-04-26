{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        LaunchTemplateInstanceMetadataEndpointStateDisabled,
        LaunchTemplateInstanceMetadataEndpointStateEnabled
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype LaunchTemplateInstanceMetadataEndpointState = LaunchTemplateInstanceMetadataEndpointState'
  { fromLaunchTemplateInstanceMetadataEndpointState ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern LaunchTemplateInstanceMetadataEndpointStateDisabled :: LaunchTemplateInstanceMetadataEndpointState
pattern LaunchTemplateInstanceMetadataEndpointStateDisabled = LaunchTemplateInstanceMetadataEndpointState' "disabled"

pattern LaunchTemplateInstanceMetadataEndpointStateEnabled :: LaunchTemplateInstanceMetadataEndpointState
pattern LaunchTemplateInstanceMetadataEndpointStateEnabled = LaunchTemplateInstanceMetadataEndpointState' "enabled"

{-# COMPLETE
  LaunchTemplateInstanceMetadataEndpointStateDisabled,
  LaunchTemplateInstanceMetadataEndpointStateEnabled,
  LaunchTemplateInstanceMetadataEndpointState'
  #-}

instance Prelude.FromText LaunchTemplateInstanceMetadataEndpointState where
  parser = LaunchTemplateInstanceMetadataEndpointState' Prelude.<$> Prelude.takeText

instance Prelude.ToText LaunchTemplateInstanceMetadataEndpointState where
  toText (LaunchTemplateInstanceMetadataEndpointState' x) = x

instance Prelude.Hashable LaunchTemplateInstanceMetadataEndpointState

instance Prelude.NFData LaunchTemplateInstanceMetadataEndpointState

instance Prelude.ToByteString LaunchTemplateInstanceMetadataEndpointState

instance Prelude.ToQuery LaunchTemplateInstanceMetadataEndpointState

instance Prelude.ToHeader LaunchTemplateInstanceMetadataEndpointState

instance Prelude.FromXML LaunchTemplateInstanceMetadataEndpointState where
  parseXML = Prelude.parseXMLText "LaunchTemplateInstanceMetadataEndpointState"
