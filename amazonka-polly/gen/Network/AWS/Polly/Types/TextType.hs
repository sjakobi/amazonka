{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Polly.Types.TextType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Polly.Types.TextType
  ( TextType
      ( ..,
        TTSsml,
        TTText
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TextType = TextType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern TTSsml :: TextType
pattern TTSsml = TextType' "ssml"

pattern TTText :: TextType
pattern TTText = TextType' "text"

{-# COMPLETE
  TTSsml,
  TTText,
  TextType'
  #-}

instance FromText TextType where
  parser = (TextType' . mk) <$> takeText

instance ToText TextType where
  toText (TextType' ci) = original ci

instance Hashable TextType

instance NFData TextType

instance ToByteString TextType

instance ToQuery TextType

instance ToHeader TextType

instance ToJSON TextType where
  toJSON = toJSONText

instance FromJSON TextType where
  parseJSON = parseJSONText "TextType"
