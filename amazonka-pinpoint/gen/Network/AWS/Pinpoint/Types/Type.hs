{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.Type
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.Type
  ( Type
      ( ..,
        All,
        Any,
        None
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

pattern All :: Type
pattern All = Type' "ALL"

pattern Any :: Type
pattern Any = Type' "ANY"

pattern None :: Type
pattern None = Type' "NONE"

{-# COMPLETE
  All,
  Any,
  None,
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
