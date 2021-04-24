{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.ResourceDataSyncS3Format
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.ResourceDataSyncS3Format
  ( ResourceDataSyncS3Format
      ( ..,
        JSONSerDe
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ResourceDataSyncS3Format
  = ResourceDataSyncS3Format'
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

pattern JSONSerDe :: ResourceDataSyncS3Format
pattern JSONSerDe = ResourceDataSyncS3Format' "JsonSerDe"

{-# COMPLETE
  JSONSerDe,
  ResourceDataSyncS3Format'
  #-}

instance FromText ResourceDataSyncS3Format where
  parser = (ResourceDataSyncS3Format' . mk) <$> takeText

instance ToText ResourceDataSyncS3Format where
  toText (ResourceDataSyncS3Format' ci) = original ci

instance Hashable ResourceDataSyncS3Format

instance NFData ResourceDataSyncS3Format

instance ToByteString ResourceDataSyncS3Format

instance ToQuery ResourceDataSyncS3Format

instance ToHeader ResourceDataSyncS3Format

instance ToJSON ResourceDataSyncS3Format where
  toJSON = toJSONText

instance FromJSON ResourceDataSyncS3Format where
  parseJSON = parseJSONText "ResourceDataSyncS3Format"
