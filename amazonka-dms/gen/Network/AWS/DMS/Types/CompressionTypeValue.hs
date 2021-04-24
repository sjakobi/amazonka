{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS.Types.CompressionTypeValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.CompressionTypeValue
  ( CompressionTypeValue
      ( ..,
        CTVGzip,
        CTVNone
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CompressionTypeValue
  = CompressionTypeValue'
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

pattern CTVGzip :: CompressionTypeValue
pattern CTVGzip = CompressionTypeValue' "gzip"

pattern CTVNone :: CompressionTypeValue
pattern CTVNone = CompressionTypeValue' "none"

{-# COMPLETE
  CTVGzip,
  CTVNone,
  CompressionTypeValue'
  #-}

instance FromText CompressionTypeValue where
  parser = (CompressionTypeValue' . mk) <$> takeText

instance ToText CompressionTypeValue where
  toText (CompressionTypeValue' ci) = original ci

instance Hashable CompressionTypeValue

instance NFData CompressionTypeValue

instance ToByteString CompressionTypeValue

instance ToQuery CompressionTypeValue

instance ToHeader CompressionTypeValue

instance ToJSON CompressionTypeValue where
  toJSON = toJSONText

instance FromJSON CompressionTypeValue where
  parseJSON = parseJSONText "CompressionTypeValue"
