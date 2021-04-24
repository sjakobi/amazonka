{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WAF.Types.TextTransformation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WAF.Types.TextTransformation
  ( TextTransformation
      ( ..,
        CmdLine,
        CompressWhiteSpace,
        HTMLEntityDecode,
        Lowercase,
        None,
        URLDecode
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TextTransformation
  = TextTransformation'
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

pattern CmdLine :: TextTransformation
pattern CmdLine = TextTransformation' "CMD_LINE"

pattern CompressWhiteSpace :: TextTransformation
pattern CompressWhiteSpace = TextTransformation' "COMPRESS_WHITE_SPACE"

pattern HTMLEntityDecode :: TextTransformation
pattern HTMLEntityDecode = TextTransformation' "HTML_ENTITY_DECODE"

pattern Lowercase :: TextTransformation
pattern Lowercase = TextTransformation' "LOWERCASE"

pattern None :: TextTransformation
pattern None = TextTransformation' "NONE"

pattern URLDecode :: TextTransformation
pattern URLDecode = TextTransformation' "URL_DECODE"

{-# COMPLETE
  CmdLine,
  CompressWhiteSpace,
  HTMLEntityDecode,
  Lowercase,
  None,
  URLDecode,
  TextTransformation'
  #-}

instance FromText TextTransformation where
  parser = (TextTransformation' . mk) <$> takeText

instance ToText TextTransformation where
  toText (TextTransformation' ci) = original ci

instance Hashable TextTransformation

instance NFData TextTransformation

instance ToByteString TextTransformation

instance ToQuery TextTransformation

instance ToHeader TextTransformation

instance ToJSON TextTransformation where
  toJSON = toJSONText

instance FromJSON TextTransformation where
  parseJSON = parseJSONText "TextTransformation"
