{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.ActionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.ActionType
  ( ActionType
      ( ..,
        Connect,
        Publish,
        Receive,
        Subscribe
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ActionType = ActionType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Connect :: ActionType
pattern Connect = ActionType' "CONNECT"

pattern Publish :: ActionType
pattern Publish = ActionType' "PUBLISH"

pattern Receive :: ActionType
pattern Receive = ActionType' "RECEIVE"

pattern Subscribe :: ActionType
pattern Subscribe = ActionType' "SUBSCRIBE"

{-# COMPLETE
  Connect,
  Publish,
  Receive,
  Subscribe,
  ActionType'
  #-}

instance FromText ActionType where
  parser = (ActionType' . mk) <$> takeText

instance ToText ActionType where
  toText (ActionType' ci) = original ci

instance Hashable ActionType

instance NFData ActionType

instance ToByteString ActionType

instance ToQuery ActionType

instance ToHeader ActionType

instance ToJSON ActionType where
  toJSON = toJSONText

instance FromJSON ActionType where
  parseJSON = parseJSONText "ActionType"
