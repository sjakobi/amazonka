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
-- Module      : Network.AWS.DirectConnect.Types.DirectConnectGatewayAssociationState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectConnect.Types.DirectConnectGatewayAssociationState
  ( DirectConnectGatewayAssociationState
      ( ..,
        DirectConnectGatewayAssociationStateAssociated,
        DirectConnectGatewayAssociationStateAssociating,
        DirectConnectGatewayAssociationStateDisassociated,
        DirectConnectGatewayAssociationStateDisassociating,
        DirectConnectGatewayAssociationStateUpdating
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DirectConnectGatewayAssociationState = DirectConnectGatewayAssociationState'
  { fromDirectConnectGatewayAssociationState ::
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

pattern DirectConnectGatewayAssociationStateAssociated :: DirectConnectGatewayAssociationState
pattern DirectConnectGatewayAssociationStateAssociated = DirectConnectGatewayAssociationState' "associated"

pattern DirectConnectGatewayAssociationStateAssociating :: DirectConnectGatewayAssociationState
pattern DirectConnectGatewayAssociationStateAssociating = DirectConnectGatewayAssociationState' "associating"

pattern DirectConnectGatewayAssociationStateDisassociated :: DirectConnectGatewayAssociationState
pattern DirectConnectGatewayAssociationStateDisassociated = DirectConnectGatewayAssociationState' "disassociated"

pattern DirectConnectGatewayAssociationStateDisassociating :: DirectConnectGatewayAssociationState
pattern DirectConnectGatewayAssociationStateDisassociating = DirectConnectGatewayAssociationState' "disassociating"

pattern DirectConnectGatewayAssociationStateUpdating :: DirectConnectGatewayAssociationState
pattern DirectConnectGatewayAssociationStateUpdating = DirectConnectGatewayAssociationState' "updating"

{-# COMPLETE
  DirectConnectGatewayAssociationStateAssociated,
  DirectConnectGatewayAssociationStateAssociating,
  DirectConnectGatewayAssociationStateDisassociated,
  DirectConnectGatewayAssociationStateDisassociating,
  DirectConnectGatewayAssociationStateUpdating,
  DirectConnectGatewayAssociationState'
  #-}

instance Prelude.FromText DirectConnectGatewayAssociationState where
  parser = DirectConnectGatewayAssociationState' Prelude.<$> Prelude.takeText

instance Prelude.ToText DirectConnectGatewayAssociationState where
  toText (DirectConnectGatewayAssociationState' x) = x

instance Prelude.Hashable DirectConnectGatewayAssociationState

instance Prelude.NFData DirectConnectGatewayAssociationState

instance Prelude.ToByteString DirectConnectGatewayAssociationState

instance Prelude.ToQuery DirectConnectGatewayAssociationState

instance Prelude.ToHeader DirectConnectGatewayAssociationState

instance Prelude.FromJSON DirectConnectGatewayAssociationState where
  parseJSON = Prelude.parseJSONText "DirectConnectGatewayAssociationState"
