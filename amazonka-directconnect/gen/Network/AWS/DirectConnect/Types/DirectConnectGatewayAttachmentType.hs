{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectConnect.Types.DirectConnectGatewayAttachmentType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectConnect.Types.DirectConnectGatewayAttachmentType
  ( DirectConnectGatewayAttachmentType
      ( ..,
        PrivateVirtualInterface,
        TransitVirtualInterface
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DirectConnectGatewayAttachmentType
  = DirectConnectGatewayAttachmentType'
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

pattern PrivateVirtualInterface :: DirectConnectGatewayAttachmentType
pattern PrivateVirtualInterface = DirectConnectGatewayAttachmentType' "PrivateVirtualInterface"

pattern TransitVirtualInterface :: DirectConnectGatewayAttachmentType
pattern TransitVirtualInterface = DirectConnectGatewayAttachmentType' "TransitVirtualInterface"

{-# COMPLETE
  PrivateVirtualInterface,
  TransitVirtualInterface,
  DirectConnectGatewayAttachmentType'
  #-}

instance FromText DirectConnectGatewayAttachmentType where
  parser = (DirectConnectGatewayAttachmentType' . mk) <$> takeText

instance ToText DirectConnectGatewayAttachmentType where
  toText (DirectConnectGatewayAttachmentType' ci) = original ci

instance Hashable DirectConnectGatewayAttachmentType

instance NFData DirectConnectGatewayAttachmentType

instance ToByteString DirectConnectGatewayAttachmentType

instance ToQuery DirectConnectGatewayAttachmentType

instance ToHeader DirectConnectGatewayAttachmentType

instance FromJSON DirectConnectGatewayAttachmentType where
  parseJSON = parseJSONText "DirectConnectGatewayAttachmentType"
