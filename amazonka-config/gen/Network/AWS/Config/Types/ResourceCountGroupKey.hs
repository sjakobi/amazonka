{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.ResourceCountGroupKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.ResourceCountGroupKey
  ( ResourceCountGroupKey
      ( ..,
        AWSRegion,
        AccountId,
        ResourceType
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ResourceCountGroupKey
  = ResourceCountGroupKey'
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

pattern AWSRegion :: ResourceCountGroupKey
pattern AWSRegion = ResourceCountGroupKey' "AWS_REGION"

pattern AccountId :: ResourceCountGroupKey
pattern AccountId = ResourceCountGroupKey' "ACCOUNT_ID"

pattern ResourceType :: ResourceCountGroupKey
pattern ResourceType = ResourceCountGroupKey' "RESOURCE_TYPE"

{-# COMPLETE
  AWSRegion,
  AccountId,
  ResourceType,
  ResourceCountGroupKey'
  #-}

instance FromText ResourceCountGroupKey where
  parser = (ResourceCountGroupKey' . mk) <$> takeText

instance ToText ResourceCountGroupKey where
  toText (ResourceCountGroupKey' ci) = original ci

instance Hashable ResourceCountGroupKey

instance NFData ResourceCountGroupKey

instance ToByteString ResourceCountGroupKey

instance ToQuery ResourceCountGroupKey

instance ToHeader ResourceCountGroupKey

instance ToJSON ResourceCountGroupKey where
  toJSON = toJSONText
