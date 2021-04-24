{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.CompressionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.CompressionType
  ( CompressionType
      ( ..,
        CTGzip,
        CTNone
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CompressionType = CompressionType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CTGzip :: CompressionType
pattern CTGzip = CompressionType' "Gzip"

pattern CTNone :: CompressionType
pattern CTNone = CompressionType' "None"

{-# COMPLETE
  CTGzip,
  CTNone,
  CompressionType'
  #-}

instance FromText CompressionType where
  parser = (CompressionType' . mk) <$> takeText

instance ToText CompressionType where
  toText (CompressionType' ci) = original ci

instance Hashable CompressionType

instance NFData CompressionType

instance ToByteString CompressionType

instance ToQuery CompressionType

instance ToHeader CompressionType

instance ToJSON CompressionType where
  toJSON = toJSONText

instance FromJSON CompressionType where
  parseJSON = parseJSONText "CompressionType"
