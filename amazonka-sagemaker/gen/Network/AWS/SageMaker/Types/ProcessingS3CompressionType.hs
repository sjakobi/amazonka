{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ProcessingS3CompressionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ProcessingS3CompressionType
  ( ProcessingS3CompressionType
      ( ..,
        PSCTGzip,
        PSCTNone
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ProcessingS3CompressionType
  = ProcessingS3CompressionType'
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

pattern PSCTGzip :: ProcessingS3CompressionType
pattern PSCTGzip = ProcessingS3CompressionType' "Gzip"

pattern PSCTNone :: ProcessingS3CompressionType
pattern PSCTNone = ProcessingS3CompressionType' "None"

{-# COMPLETE
  PSCTGzip,
  PSCTNone,
  ProcessingS3CompressionType'
  #-}

instance FromText ProcessingS3CompressionType where
  parser = (ProcessingS3CompressionType' . mk) <$> takeText

instance ToText ProcessingS3CompressionType where
  toText (ProcessingS3CompressionType' ci) = original ci

instance Hashable ProcessingS3CompressionType

instance NFData ProcessingS3CompressionType

instance ToByteString ProcessingS3CompressionType

instance ToQuery ProcessingS3CompressionType

instance ToHeader ProcessingS3CompressionType

instance ToJSON ProcessingS3CompressionType where
  toJSON = toJSONText

instance FromJSON ProcessingS3CompressionType where
  parseJSON = parseJSONText "ProcessingS3CompressionType"
