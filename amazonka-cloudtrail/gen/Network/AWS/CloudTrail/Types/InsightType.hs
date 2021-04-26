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
-- Module      : Network.AWS.CloudTrail.Types.InsightType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudTrail.Types.InsightType
  ( InsightType
      ( ..,
        InsightTypeApiCallRateInsight
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype InsightType = InsightType'
  { fromInsightType ::
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

pattern InsightTypeApiCallRateInsight :: InsightType
pattern InsightTypeApiCallRateInsight = InsightType' "ApiCallRateInsight"

{-# COMPLETE
  InsightTypeApiCallRateInsight,
  InsightType'
  #-}

instance Prelude.FromText InsightType where
  parser = InsightType' Prelude.<$> Prelude.takeText

instance Prelude.ToText InsightType where
  toText (InsightType' x) = x

instance Prelude.Hashable InsightType

instance Prelude.NFData InsightType

instance Prelude.ToByteString InsightType

instance Prelude.ToQuery InsightType

instance Prelude.ToHeader InsightType

instance Prelude.ToJSON InsightType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON InsightType where
  parseJSON = Prelude.parseJSONText "InsightType"
