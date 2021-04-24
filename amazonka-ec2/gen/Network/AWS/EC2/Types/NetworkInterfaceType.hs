{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.NetworkInterfaceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.NetworkInterfaceType
  ( NetworkInterfaceType
      ( ..,
        NITEfa,
        NITInterface,
        NITNatGateway
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data NetworkInterfaceType
  = NetworkInterfaceType'
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

pattern NITEfa :: NetworkInterfaceType
pattern NITEfa = NetworkInterfaceType' "efa"

pattern NITInterface :: NetworkInterfaceType
pattern NITInterface = NetworkInterfaceType' "interface"

pattern NITNatGateway :: NetworkInterfaceType
pattern NITNatGateway = NetworkInterfaceType' "natGateway"

{-# COMPLETE
  NITEfa,
  NITInterface,
  NITNatGateway,
  NetworkInterfaceType'
  #-}

instance FromText NetworkInterfaceType where
  parser = (NetworkInterfaceType' . mk) <$> takeText

instance ToText NetworkInterfaceType where
  toText (NetworkInterfaceType' ci) = original ci

instance Hashable NetworkInterfaceType

instance NFData NetworkInterfaceType

instance ToByteString NetworkInterfaceType

instance ToQuery NetworkInterfaceType

instance ToHeader NetworkInterfaceType

instance FromXML NetworkInterfaceType where
  parseXML = parseXMLText "NetworkInterfaceType"
