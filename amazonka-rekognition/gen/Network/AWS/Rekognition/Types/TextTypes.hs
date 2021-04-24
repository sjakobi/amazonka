{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Rekognition.Types.TextTypes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.TextTypes
  ( TextTypes
      ( ..,
        Line,
        Word
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TextTypes = TextTypes' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Line :: TextTypes
pattern Line = TextTypes' "LINE"

pattern Word :: TextTypes
pattern Word = TextTypes' "WORD"

{-# COMPLETE
  Line,
  Word,
  TextTypes'
  #-}

instance FromText TextTypes where
  parser = (TextTypes' . mk) <$> takeText

instance ToText TextTypes where
  toText (TextTypes' ci) = original ci

instance Hashable TextTypes

instance NFData TextTypes

instance ToByteString TextTypes

instance ToQuery TextTypes

instance ToHeader TextTypes

instance FromJSON TextTypes where
  parseJSON = parseJSONText "TextTypes"
