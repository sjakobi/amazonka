{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Cloud9.Types.ConnectionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Cloud9.Types.ConnectionType
  ( ConnectionType
      ( ..,
        ConnectSSH,
        ConnectSsm
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

pattern ConnectSSH :: ConnectionType
pattern ConnectSSH = ConnectionType' "CONNECT_SSH"

pattern ConnectSsm :: ConnectionType
pattern ConnectSsm = ConnectionType' "CONNECT_SSM"

{-# COMPLETE
  ConnectSSH,
  ConnectSsm,
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
