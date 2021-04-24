{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        TGASAssociated,
        TGASAssociating,
        TGASDisassociated,
        TGASDisassociating
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data TransitGatewayAssociationState
  = TransitGatewayAssociationState'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern TGASAssociated :: TransitGatewayAssociationState
pattern TGASAssociated = TransitGatewayAssociationState' "associated"

pattern TGASAssociating :: TransitGatewayAssociationState
pattern TGASAssociating = TransitGatewayAssociationState' "associating"

pattern TGASDisassociated :: TransitGatewayAssociationState
pattern TGASDisassociated = TransitGatewayAssociationState' "disassociated"

pattern TGASDisassociating :: TransitGatewayAssociationState
pattern TGASDisassociating = TransitGatewayAssociationState' "disassociating"

{-# COMPLETE
  TGASAssociated,
  TGASAssociating,
  TGASDisassociated,
  TGASDisassociating,
  TransitGatewayAssociationState'
  #-}

instance FromText TransitGatewayAssociationState where
  parser = (TransitGatewayAssociationState' . mk) <$> takeText

instance ToText TransitGatewayAssociationState where
  toText (TransitGatewayAssociationState' ci) = original ci

instance Hashable TransitGatewayAssociationState

instance NFData TransitGatewayAssociationState

instance ToByteString TransitGatewayAssociationState

instance ToQuery TransitGatewayAssociationState

instance ToHeader TransitGatewayAssociationState

instance FromXML TransitGatewayAssociationState where
  parseXML = parseXMLText "TransitGatewayAssociationState"
