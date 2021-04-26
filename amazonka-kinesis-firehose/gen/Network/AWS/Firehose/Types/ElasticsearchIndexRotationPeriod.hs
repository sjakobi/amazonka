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
-- Module      : Network.AWS.Firehose.Types.ElasticsearchIndexRotationPeriod
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Firehose.Types.ElasticsearchIndexRotationPeriod
  ( ElasticsearchIndexRotationPeriod
      ( ..,
        ElasticsearchIndexRotationPeriodNoRotation,
        ElasticsearchIndexRotationPeriodOneDay,
        ElasticsearchIndexRotationPeriodOneHour,
        ElasticsearchIndexRotationPeriodOneMonth,
        ElasticsearchIndexRotationPeriodOneWeek
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ElasticsearchIndexRotationPeriod = ElasticsearchIndexRotationPeriod'
  { fromElasticsearchIndexRotationPeriod ::
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

pattern ElasticsearchIndexRotationPeriodNoRotation :: ElasticsearchIndexRotationPeriod
pattern ElasticsearchIndexRotationPeriodNoRotation = ElasticsearchIndexRotationPeriod' "NoRotation"

pattern ElasticsearchIndexRotationPeriodOneDay :: ElasticsearchIndexRotationPeriod
pattern ElasticsearchIndexRotationPeriodOneDay = ElasticsearchIndexRotationPeriod' "OneDay"

pattern ElasticsearchIndexRotationPeriodOneHour :: ElasticsearchIndexRotationPeriod
pattern ElasticsearchIndexRotationPeriodOneHour = ElasticsearchIndexRotationPeriod' "OneHour"

pattern ElasticsearchIndexRotationPeriodOneMonth :: ElasticsearchIndexRotationPeriod
pattern ElasticsearchIndexRotationPeriodOneMonth = ElasticsearchIndexRotationPeriod' "OneMonth"

pattern ElasticsearchIndexRotationPeriodOneWeek :: ElasticsearchIndexRotationPeriod
pattern ElasticsearchIndexRotationPeriodOneWeek = ElasticsearchIndexRotationPeriod' "OneWeek"

{-# COMPLETE
  ElasticsearchIndexRotationPeriodNoRotation,
  ElasticsearchIndexRotationPeriodOneDay,
  ElasticsearchIndexRotationPeriodOneHour,
  ElasticsearchIndexRotationPeriodOneMonth,
  ElasticsearchIndexRotationPeriodOneWeek,
  ElasticsearchIndexRotationPeriod'
  #-}

instance Prelude.FromText ElasticsearchIndexRotationPeriod where
  parser = ElasticsearchIndexRotationPeriod' Prelude.<$> Prelude.takeText

instance Prelude.ToText ElasticsearchIndexRotationPeriod where
  toText (ElasticsearchIndexRotationPeriod' x) = x

instance Prelude.Hashable ElasticsearchIndexRotationPeriod

instance Prelude.NFData ElasticsearchIndexRotationPeriod

instance Prelude.ToByteString ElasticsearchIndexRotationPeriod

instance Prelude.ToQuery ElasticsearchIndexRotationPeriod

instance Prelude.ToHeader ElasticsearchIndexRotationPeriod

instance Prelude.ToJSON ElasticsearchIndexRotationPeriod where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ElasticsearchIndexRotationPeriod where
  parseJSON = Prelude.parseJSONText "ElasticsearchIndexRotationPeriod"
