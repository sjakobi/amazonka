{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Greengrass.Types.EncodingType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Greengrass.Types.EncodingType
  ( EncodingType
      ( ..,
        Binary,
        JSON
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EncodingType = EncodingType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Binary :: EncodingType
pattern Binary = EncodingType' "binary"

pattern JSON :: EncodingType
pattern JSON = EncodingType' "json"

{-# COMPLETE
  Binary,
  JSON,
  EncodingType'
  #-}

instance FromText EncodingType where
  parser = (EncodingType' . mk) <$> takeText

instance ToText EncodingType where
  toText (EncodingType' ci) = original ci

instance Hashable EncodingType

instance NFData EncodingType

instance ToByteString EncodingType

instance ToQuery EncodingType

instance ToHeader EncodingType

instance ToJSON EncodingType where
  toJSON = toJSONText

instance FromJSON EncodingType where
  parseJSON = parseJSONText "EncodingType"
