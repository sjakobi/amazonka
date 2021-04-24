{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.Types.QuickConnectType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.QuickConnectType
  ( QuickConnectType
      ( ..,
        PhoneNumber,
        Queue,
        User
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data QuickConnectType = QuickConnectType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern PhoneNumber :: QuickConnectType
pattern PhoneNumber = QuickConnectType' "PHONE_NUMBER"

pattern Queue :: QuickConnectType
pattern Queue = QuickConnectType' "QUEUE"

pattern User :: QuickConnectType
pattern User = QuickConnectType' "USER"

{-# COMPLETE
  PhoneNumber,
  Queue,
  User,
  QuickConnectType'
  #-}

instance FromText QuickConnectType where
  parser = (QuickConnectType' . mk) <$> takeText

instance ToText QuickConnectType where
  toText (QuickConnectType' ci) = original ci

instance Hashable QuickConnectType

instance NFData QuickConnectType

instance ToByteString QuickConnectType

instance ToQuery QuickConnectType

instance ToHeader QuickConnectType

instance ToJSON QuickConnectType where
  toJSON = toJSONText

instance FromJSON QuickConnectType where
  parseJSON = parseJSONText "QuickConnectType"
