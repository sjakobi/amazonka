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
-- Module      : Network.AWS.EC2.Types.VpnState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.VpnState
  ( VpnState
      ( ..,
        VpnStateAvailable,
        VpnStateDeleted,
        VpnStateDeleting,
        VpnStatePending
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype VpnState = VpnState'
  { fromVpnState ::
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

pattern VpnStateAvailable :: VpnState
pattern VpnStateAvailable = VpnState' "available"

pattern VpnStateDeleted :: VpnState
pattern VpnStateDeleted = VpnState' "deleted"

pattern VpnStateDeleting :: VpnState
pattern VpnStateDeleting = VpnState' "deleting"

pattern VpnStatePending :: VpnState
pattern VpnStatePending = VpnState' "pending"

{-# COMPLETE
  VpnStateAvailable,
  VpnStateDeleted,
  VpnStateDeleting,
  VpnStatePending,
  VpnState'
  #-}

instance Prelude.FromText VpnState where
  parser = VpnState' Prelude.<$> Prelude.takeText

instance Prelude.ToText VpnState where
  toText (VpnState' x) = x

instance Prelude.Hashable VpnState

instance Prelude.NFData VpnState

instance Prelude.ToByteString VpnState

instance Prelude.ToQuery VpnState

instance Prelude.ToHeader VpnState

instance Prelude.FromXML VpnState where
  parseXML = Prelude.parseXMLText "VpnState"
