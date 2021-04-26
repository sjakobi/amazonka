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
-- Module      : Network.AWS.EC2.Types.TransitGatewayPrefixListReferenceState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TransitGatewayPrefixListReferenceState
  ( TransitGatewayPrefixListReferenceState
      ( ..,
        TransitGatewayPrefixListReferenceStateAvailable,
        TransitGatewayPrefixListReferenceStateDeleting,
        TransitGatewayPrefixListReferenceStateModifying,
        TransitGatewayPrefixListReferenceStatePending
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype TransitGatewayPrefixListReferenceState = TransitGatewayPrefixListReferenceState'
  { fromTransitGatewayPrefixListReferenceState ::
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

pattern TransitGatewayPrefixListReferenceStateAvailable :: TransitGatewayPrefixListReferenceState
pattern TransitGatewayPrefixListReferenceStateAvailable = TransitGatewayPrefixListReferenceState' "available"

pattern TransitGatewayPrefixListReferenceStateDeleting :: TransitGatewayPrefixListReferenceState
pattern TransitGatewayPrefixListReferenceStateDeleting = TransitGatewayPrefixListReferenceState' "deleting"

pattern TransitGatewayPrefixListReferenceStateModifying :: TransitGatewayPrefixListReferenceState
pattern TransitGatewayPrefixListReferenceStateModifying = TransitGatewayPrefixListReferenceState' "modifying"

pattern TransitGatewayPrefixListReferenceStatePending :: TransitGatewayPrefixListReferenceState
pattern TransitGatewayPrefixListReferenceStatePending = TransitGatewayPrefixListReferenceState' "pending"

{-# COMPLETE
  TransitGatewayPrefixListReferenceStateAvailable,
  TransitGatewayPrefixListReferenceStateDeleting,
  TransitGatewayPrefixListReferenceStateModifying,
  TransitGatewayPrefixListReferenceStatePending,
  TransitGatewayPrefixListReferenceState'
  #-}

instance Prelude.FromText TransitGatewayPrefixListReferenceState where
  parser = TransitGatewayPrefixListReferenceState' Prelude.<$> Prelude.takeText

instance Prelude.ToText TransitGatewayPrefixListReferenceState where
  toText (TransitGatewayPrefixListReferenceState' x) = x

instance Prelude.Hashable TransitGatewayPrefixListReferenceState

instance Prelude.NFData TransitGatewayPrefixListReferenceState

instance Prelude.ToByteString TransitGatewayPrefixListReferenceState

instance Prelude.ToQuery TransitGatewayPrefixListReferenceState

instance Prelude.ToHeader TransitGatewayPrefixListReferenceState

instance Prelude.FromXML TransitGatewayPrefixListReferenceState where
  parseXML = Prelude.parseXMLText "TransitGatewayPrefixListReferenceState"
