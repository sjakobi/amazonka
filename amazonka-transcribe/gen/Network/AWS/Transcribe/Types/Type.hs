{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Transcribe.Types.Type
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Transcribe.Types.Type
  ( Type
      ( ..,
        Conversation,
        Dictation
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data Type = Type' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Conversation :: Type
pattern Conversation = Type' "CONVERSATION"

pattern Dictation :: Type
pattern Dictation = Type' "DICTATION"

{-# COMPLETE
  Conversation,
  Dictation,
  Type'
  #-}

instance FromText Type where
  parser = (Type' . mk) <$> takeText

instance ToText Type where
  toText (Type' ci) = original ci

instance Hashable Type

instance NFData Type

instance ToByteString Type

instance ToQuery Type

instance ToHeader Type

instance ToJSON Type where
  toJSON = toJSONText

instance FromJSON Type where
  parseJSON = parseJSONText "Type"
