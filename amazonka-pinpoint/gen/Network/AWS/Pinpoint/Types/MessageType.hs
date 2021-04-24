{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.MessageType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.MessageType
  ( MessageType
      ( ..,
        Promotional,
        Transactional
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data MessageType = MessageType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Promotional :: MessageType
pattern Promotional = MessageType' "PROMOTIONAL"

pattern Transactional :: MessageType
pattern Transactional = MessageType' "TRANSACTIONAL"

{-# COMPLETE
  Promotional,
  Transactional,
  MessageType'
  #-}

instance FromText MessageType where
  parser = (MessageType' . mk) <$> takeText

instance ToText MessageType where
  toText (MessageType' ci) = original ci

instance Hashable MessageType

instance NFData MessageType

instance ToByteString MessageType

instance ToQuery MessageType

instance ToHeader MessageType

instance ToJSON MessageType where
  toJSON = toJSONText

instance FromJSON MessageType where
  parseJSON = parseJSONText "MessageType"
