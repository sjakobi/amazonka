{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.Types.Unit
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.Unit
  ( Unit
      ( ..,
        Count,
        Percent,
        Seconds
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data Unit = Unit' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Count :: Unit
pattern Count = Unit' "COUNT"

pattern Percent :: Unit
pattern Percent = Unit' "PERCENT"

pattern Seconds :: Unit
pattern Seconds = Unit' "SECONDS"

{-# COMPLETE
  Count,
  Percent,
  Seconds,
  Unit'
  #-}

instance FromText Unit where
  parser = (Unit' . mk) <$> takeText

instance ToText Unit where
  toText (Unit' ci) = original ci

instance Hashable Unit

instance NFData Unit

instance ToByteString Unit

instance ToQuery Unit

instance ToHeader Unit

instance ToJSON Unit where
  toJSON = toJSONText

instance FromJSON Unit where
  parseJSON = parseJSONText "Unit"
