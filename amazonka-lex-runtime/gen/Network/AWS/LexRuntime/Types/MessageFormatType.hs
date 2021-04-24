{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.LexRuntime.Types.MessageFormatType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexRuntime.Types.MessageFormatType
  ( MessageFormatType
      ( ..,
        Composite,
        CustomPayload,
        PlainText,
        Ssml
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data MessageFormatType = MessageFormatType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Composite :: MessageFormatType
pattern Composite = MessageFormatType' "Composite"

pattern CustomPayload :: MessageFormatType
pattern CustomPayload = MessageFormatType' "CustomPayload"

pattern PlainText :: MessageFormatType
pattern PlainText = MessageFormatType' "PlainText"

pattern Ssml :: MessageFormatType
pattern Ssml = MessageFormatType' "SSML"

{-# COMPLETE
  Composite,
  CustomPayload,
  PlainText,
  Ssml,
  MessageFormatType'
  #-}

instance FromText MessageFormatType where
  parser = (MessageFormatType' . mk) <$> takeText

instance ToText MessageFormatType where
  toText (MessageFormatType' ci) = original ci

instance Hashable MessageFormatType

instance NFData MessageFormatType

instance ToByteString MessageFormatType

instance ToQuery MessageFormatType

instance ToHeader MessageFormatType

instance ToJSON MessageFormatType where
  toJSON = toJSONText

instance FromJSON MessageFormatType where
  parseJSON = parseJSONText "MessageFormatType"
