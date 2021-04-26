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
-- Module      : Network.AWS.AutoScaling.Types.InstanceMetadataHttpTokensState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AutoScaling.Types.InstanceMetadataHttpTokensState
  ( InstanceMetadataHttpTokensState
      ( ..,
        InstanceMetadataHttpTokensStateOptional,
        InstanceMetadataHttpTokensStateRequired
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype InstanceMetadataHttpTokensState = InstanceMetadataHttpTokensState'
  { fromInstanceMetadataHttpTokensState ::
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

pattern InstanceMetadataHttpTokensStateOptional :: InstanceMetadataHttpTokensState
pattern InstanceMetadataHttpTokensStateOptional = InstanceMetadataHttpTokensState' "optional"

pattern InstanceMetadataHttpTokensStateRequired :: InstanceMetadataHttpTokensState
pattern InstanceMetadataHttpTokensStateRequired = InstanceMetadataHttpTokensState' "required"

{-# COMPLETE
  InstanceMetadataHttpTokensStateOptional,
  InstanceMetadataHttpTokensStateRequired,
  InstanceMetadataHttpTokensState'
  #-}

instance Prelude.FromText InstanceMetadataHttpTokensState where
  parser = InstanceMetadataHttpTokensState' Prelude.<$> Prelude.takeText

instance Prelude.ToText InstanceMetadataHttpTokensState where
  toText (InstanceMetadataHttpTokensState' x) = x

instance Prelude.Hashable InstanceMetadataHttpTokensState

instance Prelude.NFData InstanceMetadataHttpTokensState

instance Prelude.ToByteString InstanceMetadataHttpTokensState

instance Prelude.ToQuery InstanceMetadataHttpTokensState

instance Prelude.ToHeader InstanceMetadataHttpTokensState

instance Prelude.FromXML InstanceMetadataHttpTokensState where
  parseXML = Prelude.parseXMLText "InstanceMetadataHttpTokensState"
