{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.APIGateway.Types.ConnectionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.APIGateway.Types.ConnectionType
  ( ConnectionType
      ( ..,
        Internet,
        VPCLink
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ConnectionType = ConnectionType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Internet :: ConnectionType
pattern Internet = ConnectionType' "INTERNET"

pattern VPCLink :: ConnectionType
pattern VPCLink = ConnectionType' "VPC_LINK"

{-# COMPLETE
  Internet,
  VPCLink,
  ConnectionType'
  #-}

instance FromText ConnectionType where
  parser = (ConnectionType' . mk) <$> takeText

instance ToText ConnectionType where
  toText (ConnectionType' ci) = original ci

instance Hashable ConnectionType

instance NFData ConnectionType

instance ToByteString ConnectionType

instance ToQuery ConnectionType

instance ToHeader ConnectionType

instance ToJSON ConnectionType where
  toJSON = toJSONText

instance FromJSON ConnectionType where
  parseJSON = parseJSONText "ConnectionType"
