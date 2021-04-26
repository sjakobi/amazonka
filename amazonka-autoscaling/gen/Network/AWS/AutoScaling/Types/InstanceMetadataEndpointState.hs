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
-- Module      : Network.AWS.AutoScaling.Types.InstanceMetadataEndpointState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AutoScaling.Types.InstanceMetadataEndpointState
  ( InstanceMetadataEndpointState
      ( ..,
        InstanceMetadataEndpointStateDisabled,
        InstanceMetadataEndpointStateEnabled
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype InstanceMetadataEndpointState = InstanceMetadataEndpointState'
  { fromInstanceMetadataEndpointState ::
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

pattern InstanceMetadataEndpointStateDisabled :: InstanceMetadataEndpointState
pattern InstanceMetadataEndpointStateDisabled = InstanceMetadataEndpointState' "disabled"

pattern InstanceMetadataEndpointStateEnabled :: InstanceMetadataEndpointState
pattern InstanceMetadataEndpointStateEnabled = InstanceMetadataEndpointState' "enabled"

{-# COMPLETE
  InstanceMetadataEndpointStateDisabled,
  InstanceMetadataEndpointStateEnabled,
  InstanceMetadataEndpointState'
  #-}

instance Prelude.FromText InstanceMetadataEndpointState where
  parser = InstanceMetadataEndpointState' Prelude.<$> Prelude.takeText

instance Prelude.ToText InstanceMetadataEndpointState where
  toText (InstanceMetadataEndpointState' x) = x

instance Prelude.Hashable InstanceMetadataEndpointState

instance Prelude.NFData InstanceMetadataEndpointState

instance Prelude.ToByteString InstanceMetadataEndpointState

instance Prelude.ToQuery InstanceMetadataEndpointState

instance Prelude.ToHeader InstanceMetadataEndpointState

instance Prelude.FromXML InstanceMetadataEndpointState where
  parseXML = Prelude.parseXMLText "InstanceMetadataEndpointState"
