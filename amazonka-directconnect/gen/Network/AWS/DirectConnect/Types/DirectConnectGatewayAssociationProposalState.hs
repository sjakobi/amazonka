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
-- Module      : Network.AWS.DirectConnect.Types.DirectConnectGatewayAssociationProposalState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectConnect.Types.DirectConnectGatewayAssociationProposalState
  ( DirectConnectGatewayAssociationProposalState
      ( ..,
        DirectConnectGatewayAssociationProposalStateAccepted,
        DirectConnectGatewayAssociationProposalStateDeleted,
        DirectConnectGatewayAssociationProposalStateRequested
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DirectConnectGatewayAssociationProposalState = DirectConnectGatewayAssociationProposalState'
  { fromDirectConnectGatewayAssociationProposalState ::
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

pattern DirectConnectGatewayAssociationProposalStateAccepted :: DirectConnectGatewayAssociationProposalState
pattern DirectConnectGatewayAssociationProposalStateAccepted = DirectConnectGatewayAssociationProposalState' "accepted"

pattern DirectConnectGatewayAssociationProposalStateDeleted :: DirectConnectGatewayAssociationProposalState
pattern DirectConnectGatewayAssociationProposalStateDeleted = DirectConnectGatewayAssociationProposalState' "deleted"

pattern DirectConnectGatewayAssociationProposalStateRequested :: DirectConnectGatewayAssociationProposalState
pattern DirectConnectGatewayAssociationProposalStateRequested = DirectConnectGatewayAssociationProposalState' "requested"

{-# COMPLETE
  DirectConnectGatewayAssociationProposalStateAccepted,
  DirectConnectGatewayAssociationProposalStateDeleted,
  DirectConnectGatewayAssociationProposalStateRequested,
  DirectConnectGatewayAssociationProposalState'
  #-}

instance Prelude.FromText DirectConnectGatewayAssociationProposalState where
  parser = DirectConnectGatewayAssociationProposalState' Prelude.<$> Prelude.takeText

instance Prelude.ToText DirectConnectGatewayAssociationProposalState where
  toText (DirectConnectGatewayAssociationProposalState' x) = x

instance Prelude.Hashable DirectConnectGatewayAssociationProposalState

instance Prelude.NFData DirectConnectGatewayAssociationProposalState

instance Prelude.ToByteString DirectConnectGatewayAssociationProposalState

instance Prelude.ToQuery DirectConnectGatewayAssociationProposalState

instance Prelude.ToHeader DirectConnectGatewayAssociationProposalState

instance Prelude.FromJSON DirectConnectGatewayAssociationProposalState where
  parseJSON = Prelude.parseJSONText "DirectConnectGatewayAssociationProposalState"
