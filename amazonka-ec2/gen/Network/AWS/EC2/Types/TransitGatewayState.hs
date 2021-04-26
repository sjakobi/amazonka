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
-- Module      : Network.AWS.EC2.Types.TransitGatewayState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TransitGatewayState
  ( TransitGatewayState
      ( ..,
        TransitGatewayStateAvailable,
        TransitGatewayStateDeleted,
        TransitGatewayStateDeleting,
        TransitGatewayStateModifying,
        TransitGatewayStatePending
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype TransitGatewayState = TransitGatewayState'
  { fromTransitGatewayState ::
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

pattern TransitGatewayStateAvailable :: TransitGatewayState
pattern TransitGatewayStateAvailable = TransitGatewayState' "available"

pattern TransitGatewayStateDeleted :: TransitGatewayState
pattern TransitGatewayStateDeleted = TransitGatewayState' "deleted"

pattern TransitGatewayStateDeleting :: TransitGatewayState
pattern TransitGatewayStateDeleting = TransitGatewayState' "deleting"

pattern TransitGatewayStateModifying :: TransitGatewayState
pattern TransitGatewayStateModifying = TransitGatewayState' "modifying"

pattern TransitGatewayStatePending :: TransitGatewayState
pattern TransitGatewayStatePending = TransitGatewayState' "pending"

{-# COMPLETE
  TransitGatewayStateAvailable,
  TransitGatewayStateDeleted,
  TransitGatewayStateDeleting,
  TransitGatewayStateModifying,
  TransitGatewayStatePending,
  TransitGatewayState'
  #-}

instance Prelude.FromText TransitGatewayState where
  parser = TransitGatewayState' Prelude.<$> Prelude.takeText

instance Prelude.ToText TransitGatewayState where
  toText (TransitGatewayState' x) = x

instance Prelude.Hashable TransitGatewayState

instance Prelude.NFData TransitGatewayState

instance Prelude.ToByteString TransitGatewayState

instance Prelude.ToQuery TransitGatewayState

instance Prelude.ToHeader TransitGatewayState

instance Prelude.FromXML TransitGatewayState where
  parseXML = Prelude.parseXMLText "TransitGatewayState"
