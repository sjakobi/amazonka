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
-- Module      : Network.AWS.EC2.Types.TransitGatewayAssociationState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TransitGatewayAssociationState
  ( TransitGatewayAssociationState
      ( ..,
        TransitGatewayAssociationStateAssociated,
        TransitGatewayAssociationStateAssociating,
        TransitGatewayAssociationStateDisassociated,
        TransitGatewayAssociationStateDisassociating
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype TransitGatewayAssociationState = TransitGatewayAssociationState'
  { fromTransitGatewayAssociationState ::
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

pattern TransitGatewayAssociationStateAssociated :: TransitGatewayAssociationState
pattern TransitGatewayAssociationStateAssociated = TransitGatewayAssociationState' "associated"

pattern TransitGatewayAssociationStateAssociating :: TransitGatewayAssociationState
pattern TransitGatewayAssociationStateAssociating = TransitGatewayAssociationState' "associating"

pattern TransitGatewayAssociationStateDisassociated :: TransitGatewayAssociationState
pattern TransitGatewayAssociationStateDisassociated = TransitGatewayAssociationState' "disassociated"

pattern TransitGatewayAssociationStateDisassociating :: TransitGatewayAssociationState
pattern TransitGatewayAssociationStateDisassociating = TransitGatewayAssociationState' "disassociating"

{-# COMPLETE
  TransitGatewayAssociationStateAssociated,
  TransitGatewayAssociationStateAssociating,
  TransitGatewayAssociationStateDisassociated,
  TransitGatewayAssociationStateDisassociating,
  TransitGatewayAssociationState'
  #-}

instance Prelude.FromText TransitGatewayAssociationState where
  parser = TransitGatewayAssociationState' Prelude.<$> Prelude.takeText

instance Prelude.ToText TransitGatewayAssociationState where
  toText (TransitGatewayAssociationState' x) = x

instance Prelude.Hashable TransitGatewayAssociationState

instance Prelude.NFData TransitGatewayAssociationState

instance Prelude.ToByteString TransitGatewayAssociationState

instance Prelude.ToQuery TransitGatewayAssociationState

instance Prelude.ToHeader TransitGatewayAssociationState

instance Prelude.FromXML TransitGatewayAssociationState where
  parseXML = Prelude.parseXMLText "TransitGatewayAssociationState"
