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
-- Module      : Network.AWS.EC2.Types.NatGatewayState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.NatGatewayState
  ( NatGatewayState
      ( ..,
        NatGatewayStateAvailable,
        NatGatewayStateDeleted,
        NatGatewayStateDeleting,
        NatGatewayStateFailed,
        NatGatewayStatePending
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype NatGatewayState = NatGatewayState'
  { fromNatGatewayState ::
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

pattern NatGatewayStateAvailable :: NatGatewayState
pattern NatGatewayStateAvailable = NatGatewayState' "available"

pattern NatGatewayStateDeleted :: NatGatewayState
pattern NatGatewayStateDeleted = NatGatewayState' "deleted"

pattern NatGatewayStateDeleting :: NatGatewayState
pattern NatGatewayStateDeleting = NatGatewayState' "deleting"

pattern NatGatewayStateFailed :: NatGatewayState
pattern NatGatewayStateFailed = NatGatewayState' "failed"

pattern NatGatewayStatePending :: NatGatewayState
pattern NatGatewayStatePending = NatGatewayState' "pending"

{-# COMPLETE
  NatGatewayStateAvailable,
  NatGatewayStateDeleted,
  NatGatewayStateDeleting,
  NatGatewayStateFailed,
  NatGatewayStatePending,
  NatGatewayState'
  #-}

instance Prelude.FromText NatGatewayState where
  parser = NatGatewayState' Prelude.<$> Prelude.takeText

instance Prelude.ToText NatGatewayState where
  toText (NatGatewayState' x) = x

instance Prelude.Hashable NatGatewayState

instance Prelude.NFData NatGatewayState

instance Prelude.ToByteString NatGatewayState

instance Prelude.ToQuery NatGatewayState

instance Prelude.ToHeader NatGatewayState

instance Prelude.FromXML NatGatewayState where
  parseXML = Prelude.parseXMLText "NatGatewayState"
