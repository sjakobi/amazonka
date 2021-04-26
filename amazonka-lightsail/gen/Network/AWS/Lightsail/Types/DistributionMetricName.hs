{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        DistributionMetricNameBytesDownloaded,
        DistributionMetricNameBytesUploaded,
        DistributionMetricNameHttp4xxErrorRate,
        DistributionMetricNameHttp5xxErrorRate,
        DistributionMetricNameRequests,
        DistributionMetricNameTotalErrorRate
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DistributionMetricName = DistributionMetricName'
  { fromDistributionMetricName ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern DistributionMetricNameBytesDownloaded :: DistributionMetricName
pattern DistributionMetricNameBytesDownloaded = DistributionMetricName' "BytesDownloaded"

pattern DistributionMetricNameBytesUploaded :: DistributionMetricName
pattern DistributionMetricNameBytesUploaded = DistributionMetricName' "BytesUploaded"

pattern DistributionMetricNameHttp4xxErrorRate :: DistributionMetricName
pattern DistributionMetricNameHttp4xxErrorRate = DistributionMetricName' "Http4xxErrorRate"

pattern DistributionMetricNameHttp5xxErrorRate :: DistributionMetricName
pattern DistributionMetricNameHttp5xxErrorRate = DistributionMetricName' "Http5xxErrorRate"

pattern DistributionMetricNameRequests :: DistributionMetricName
pattern DistributionMetricNameRequests = DistributionMetricName' "Requests"

pattern DistributionMetricNameTotalErrorRate :: DistributionMetricName
pattern DistributionMetricNameTotalErrorRate = DistributionMetricName' "TotalErrorRate"

{-# COMPLETE
  DistributionMetricNameBytesDownloaded,
  DistributionMetricNameBytesUploaded,
  DistributionMetricNameHttp4xxErrorRate,
  DistributionMetricNameHttp5xxErrorRate,
  DistributionMetricNameRequests,
  DistributionMetricNameTotalErrorRate,
  DistributionMetricName'
  #-}

instance Prelude.FromText DistributionMetricName where
  parser = DistributionMetricName' Prelude.<$> Prelude.takeText

instance Prelude.ToText DistributionMetricName where
  toText (DistributionMetricName' x) = x

instance Prelude.Hashable DistributionMetricName

instance Prelude.NFData DistributionMetricName

instance Prelude.ToByteString DistributionMetricName

instance Prelude.ToQuery DistributionMetricName

instance Prelude.ToHeader DistributionMetricName

instance Prelude.ToJSON DistributionMetricName where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DistributionMetricName where
  parseJSON = Prelude.parseJSONText "DistributionMetricName"
