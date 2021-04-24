{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.DistributionMetricName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.DistributionMetricName
  ( DistributionMetricName
      ( ..,
        BytesDownloaded,
        BytesUploaded,
        HTTP4xxErrorRate,
        HTTP5xxErrorRate,
        Requests,
        TotalErrorRate
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DistributionMetricName
  = DistributionMetricName'
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

pattern BytesDownloaded :: DistributionMetricName
pattern BytesDownloaded = DistributionMetricName' "BytesDownloaded"

pattern BytesUploaded :: DistributionMetricName
pattern BytesUploaded = DistributionMetricName' "BytesUploaded"

pattern HTTP4xxErrorRate :: DistributionMetricName
pattern HTTP4xxErrorRate = DistributionMetricName' "Http4xxErrorRate"

pattern HTTP5xxErrorRate :: DistributionMetricName
pattern HTTP5xxErrorRate = DistributionMetricName' "Http5xxErrorRate"

pattern Requests :: DistributionMetricName
pattern Requests = DistributionMetricName' "Requests"

pattern TotalErrorRate :: DistributionMetricName
pattern TotalErrorRate = DistributionMetricName' "TotalErrorRate"

{-# COMPLETE
  BytesDownloaded,
  BytesUploaded,
  HTTP4xxErrorRate,
  HTTP5xxErrorRate,
  Requests,
  TotalErrorRate,
  DistributionMetricName'
  #-}

instance FromText DistributionMetricName where
  parser = (DistributionMetricName' . mk) <$> takeText

instance ToText DistributionMetricName where
  toText (DistributionMetricName' ci) = original ci

instance Hashable DistributionMetricName

instance NFData DistributionMetricName

instance ToByteString DistributionMetricName

instance ToQuery DistributionMetricName

instance ToHeader DistributionMetricName

instance ToJSON DistributionMetricName where
  toJSON = toJSONText

instance FromJSON DistributionMetricName where
  parseJSON = parseJSONText "DistributionMetricName"
