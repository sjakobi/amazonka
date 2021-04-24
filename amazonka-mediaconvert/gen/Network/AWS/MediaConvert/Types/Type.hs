{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Type
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Type
  ( Type
      ( ..,
        Custom,
        System
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

pattern Custom :: Type
pattern Custom = Type' "CUSTOM"

pattern System :: Type
pattern System = Type' "SYSTEM"

{-# COMPLETE
  Custom,
  System,
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

instance FromJSON Type where
  parseJSON = parseJSONText "Type"
