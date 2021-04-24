{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ProcessingS3DataType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ProcessingS3DataType
  ( ProcessingS3DataType
      ( ..,
        PSDTManifestFile,
        PSDTS3Prefix
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ProcessingS3DataType
  = ProcessingS3DataType'
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

pattern PSDTManifestFile :: ProcessingS3DataType
pattern PSDTManifestFile = ProcessingS3DataType' "ManifestFile"

pattern PSDTS3Prefix :: ProcessingS3DataType
pattern PSDTS3Prefix = ProcessingS3DataType' "S3Prefix"

{-# COMPLETE
  PSDTManifestFile,
  PSDTS3Prefix,
  ProcessingS3DataType'
  #-}

instance FromText ProcessingS3DataType where
  parser = (ProcessingS3DataType' . mk) <$> takeText

instance ToText ProcessingS3DataType where
  toText (ProcessingS3DataType' ci) = original ci

instance Hashable ProcessingS3DataType

instance NFData ProcessingS3DataType

instance ToByteString ProcessingS3DataType

instance ToQuery ProcessingS3DataType

instance ToHeader ProcessingS3DataType

instance ToJSON ProcessingS3DataType where
  toJSON = toJSONText

instance FromJSON ProcessingS3DataType where
  parseJSON = parseJSONText "ProcessingS3DataType"
