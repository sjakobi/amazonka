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
-- Module      : Network.AWS.EC2.Types.LaunchTemplateInstanceMetadataOptionsState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.LaunchTemplateInstanceMetadataOptionsState
  ( LaunchTemplateInstanceMetadataOptionsState
      ( ..,
        LaunchTemplateInstanceMetadataOptionsStateApplied,
        LaunchTemplateInstanceMetadataOptionsStatePending
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype LaunchTemplateInstanceMetadataOptionsState = LaunchTemplateInstanceMetadataOptionsState'
  { fromLaunchTemplateInstanceMetadataOptionsState ::
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

pattern LaunchTemplateInstanceMetadataOptionsStateApplied :: LaunchTemplateInstanceMetadataOptionsState
pattern LaunchTemplateInstanceMetadataOptionsStateApplied = LaunchTemplateInstanceMetadataOptionsState' "applied"

pattern LaunchTemplateInstanceMetadataOptionsStatePending :: LaunchTemplateInstanceMetadataOptionsState
pattern LaunchTemplateInstanceMetadataOptionsStatePending = LaunchTemplateInstanceMetadataOptionsState' "pending"

{-# COMPLETE
  LaunchTemplateInstanceMetadataOptionsStateApplied,
  LaunchTemplateInstanceMetadataOptionsStatePending,
  LaunchTemplateInstanceMetadataOptionsState'
  #-}

instance Prelude.FromText LaunchTemplateInstanceMetadataOptionsState where
  parser = LaunchTemplateInstanceMetadataOptionsState' Prelude.<$> Prelude.takeText

instance Prelude.ToText LaunchTemplateInstanceMetadataOptionsState where
  toText (LaunchTemplateInstanceMetadataOptionsState' x) = x

instance Prelude.Hashable LaunchTemplateInstanceMetadataOptionsState

instance Prelude.NFData LaunchTemplateInstanceMetadataOptionsState

instance Prelude.ToByteString LaunchTemplateInstanceMetadataOptionsState

instance Prelude.ToQuery LaunchTemplateInstanceMetadataOptionsState

instance Prelude.ToHeader LaunchTemplateInstanceMetadataOptionsState

instance Prelude.FromXML LaunchTemplateInstanceMetadataOptionsState where
  parseXML = Prelude.parseXMLText "LaunchTemplateInstanceMetadataOptionsState"
