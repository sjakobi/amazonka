{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudTrail.Types.ReadWriteType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudTrail.Types.ReadWriteType
  ( ReadWriteType
      ( ..,
        All,
        ReadOnly,
        WriteOnly
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ReadWriteType = ReadWriteType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern All :: ReadWriteType
pattern All = ReadWriteType' "All"

pattern ReadOnly :: ReadWriteType
pattern ReadOnly = ReadWriteType' "ReadOnly"

pattern WriteOnly :: ReadWriteType
pattern WriteOnly = ReadWriteType' "WriteOnly"

{-# COMPLETE
  All,
  ReadOnly,
  WriteOnly,
  ReadWriteType'
  #-}

instance FromText ReadWriteType where
  parser = (ReadWriteType' . mk) <$> takeText

instance ToText ReadWriteType where
  toText (ReadWriteType' ci) = original ci

instance Hashable ReadWriteType

instance NFData ReadWriteType

instance ToByteString ReadWriteType

instance ToQuery ReadWriteType

instance ToHeader ReadWriteType

instance ToJSON ReadWriteType where
  toJSON = toJSONText

instance FromJSON ReadWriteType where
  parseJSON = parseJSONText "ReadWriteType"
