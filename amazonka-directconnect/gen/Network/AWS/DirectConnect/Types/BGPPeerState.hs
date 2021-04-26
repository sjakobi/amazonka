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
-- Module      : Network.AWS.DirectConnect.Types.BGPPeerState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectConnect.Types.BGPPeerState
  ( BGPPeerState
      ( ..,
        BGPPeerStateAvailable,
        BGPPeerStateDeleted,
        BGPPeerStateDeleting,
        BGPPeerStatePending,
        BGPPeerStateVerifying
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype BGPPeerState = BGPPeerState'
  { fromBGPPeerState ::
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

pattern BGPPeerStateAvailable :: BGPPeerState
pattern BGPPeerStateAvailable = BGPPeerState' "available"

pattern BGPPeerStateDeleted :: BGPPeerState
pattern BGPPeerStateDeleted = BGPPeerState' "deleted"

pattern BGPPeerStateDeleting :: BGPPeerState
pattern BGPPeerStateDeleting = BGPPeerState' "deleting"

pattern BGPPeerStatePending :: BGPPeerState
pattern BGPPeerStatePending = BGPPeerState' "pending"

pattern BGPPeerStateVerifying :: BGPPeerState
pattern BGPPeerStateVerifying = BGPPeerState' "verifying"

{-# COMPLETE
  BGPPeerStateAvailable,
  BGPPeerStateDeleted,
  BGPPeerStateDeleting,
  BGPPeerStatePending,
  BGPPeerStateVerifying,
  BGPPeerState'
  #-}

instance Prelude.FromText BGPPeerState where
  parser = BGPPeerState' Prelude.<$> Prelude.takeText

instance Prelude.ToText BGPPeerState where
  toText (BGPPeerState' x) = x

instance Prelude.Hashable BGPPeerState

instance Prelude.NFData BGPPeerState

instance Prelude.ToByteString BGPPeerState

instance Prelude.ToQuery BGPPeerState

instance Prelude.ToHeader BGPPeerState

instance Prelude.FromJSON BGPPeerState where
  parseJSON = Prelude.parseJSONText "BGPPeerState"
