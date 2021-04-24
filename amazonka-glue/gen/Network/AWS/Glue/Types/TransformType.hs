{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.TransformType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.TransformType
  ( TransformType
      ( ..,
        FindMatches
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TransformType = TransformType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern FindMatches :: TransformType
pattern FindMatches = TransformType' "FIND_MATCHES"

{-# COMPLETE
  FindMatches,
  TransformType'
  #-}

instance FromText TransformType where
  parser = (TransformType' . mk) <$> takeText

instance ToText TransformType where
  toText (TransformType' ci) = original ci

instance Hashable TransformType

instance NFData TransformType

instance ToByteString TransformType

instance ToQuery TransformType

instance ToHeader TransformType

instance ToJSON TransformType where
  toJSON = toJSONText

instance FromJSON TransformType where
  parseJSON = parseJSONText "TransformType"
