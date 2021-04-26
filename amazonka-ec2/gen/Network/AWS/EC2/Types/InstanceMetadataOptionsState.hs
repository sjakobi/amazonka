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
-- Module      : Network.AWS.EC2.Types.InstanceMetadataOptionsState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.InstanceMetadataOptionsState
  ( InstanceMetadataOptionsState
      ( ..,
        InstanceMetadataOptionsStateApplied,
        InstanceMetadataOptionsStatePending
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype InstanceMetadataOptionsState = InstanceMetadataOptionsState'
  { fromInstanceMetadataOptionsState ::
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

pattern InstanceMetadataOptionsStateApplied :: InstanceMetadataOptionsState
pattern InstanceMetadataOptionsStateApplied = InstanceMetadataOptionsState' "applied"

pattern InstanceMetadataOptionsStatePending :: InstanceMetadataOptionsState
pattern InstanceMetadataOptionsStatePending = InstanceMetadataOptionsState' "pending"

{-# COMPLETE
  InstanceMetadataOptionsStateApplied,
  InstanceMetadataOptionsStatePending,
  InstanceMetadataOptionsState'
  #-}

instance Prelude.FromText InstanceMetadataOptionsState where
  parser = InstanceMetadataOptionsState' Prelude.<$> Prelude.takeText

instance Prelude.ToText InstanceMetadataOptionsState where
  toText (InstanceMetadataOptionsState' x) = x

instance Prelude.Hashable InstanceMetadataOptionsState

instance Prelude.NFData InstanceMetadataOptionsState

instance Prelude.ToByteString InstanceMetadataOptionsState

instance Prelude.ToQuery InstanceMetadataOptionsState

instance Prelude.ToHeader InstanceMetadataOptionsState

instance Prelude.FromXML InstanceMetadataOptionsState where
  parseXML = Prelude.parseXMLText "InstanceMetadataOptionsState"
