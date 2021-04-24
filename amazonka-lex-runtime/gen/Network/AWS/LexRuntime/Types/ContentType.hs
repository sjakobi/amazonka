{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.LexRuntime.Types.ContentType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexRuntime.Types.ContentType
  ( ContentType
      ( ..,
        ApplicationVnd_Amazonaws_Card_Generic
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ContentType = ContentType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ApplicationVnd_Amazonaws_Card_Generic :: ContentType
pattern ApplicationVnd_Amazonaws_Card_Generic = ContentType' "application/vnd.amazonaws.card.generic"

{-# COMPLETE
  ApplicationVnd_Amazonaws_Card_Generic,
  ContentType'
  #-}

instance FromText ContentType where
  parser = (ContentType' . mk) <$> takeText

instance ToText ContentType where
  toText (ContentType' ci) = original ci

instance Hashable ContentType

instance NFData ContentType

instance ToByteString ContentType

instance ToQuery ContentType

instance ToHeader ContentType

instance FromJSON ContentType where
  parseJSON = parseJSONText "ContentType"
