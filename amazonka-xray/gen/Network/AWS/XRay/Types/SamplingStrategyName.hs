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
-- Module      : Network.AWS.XRay.Types.SamplingStrategyName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.XRay.Types.SamplingStrategyName
  ( SamplingStrategyName
      ( ..,
        SamplingStrategyNameFixedRate,
        SamplingStrategyNamePartialScan
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SamplingStrategyName = SamplingStrategyName'
  { fromSamplingStrategyName ::
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

pattern SamplingStrategyNameFixedRate :: SamplingStrategyName
pattern SamplingStrategyNameFixedRate = SamplingStrategyName' "FixedRate"

pattern SamplingStrategyNamePartialScan :: SamplingStrategyName
pattern SamplingStrategyNamePartialScan = SamplingStrategyName' "PartialScan"

{-# COMPLETE
  SamplingStrategyNameFixedRate,
  SamplingStrategyNamePartialScan,
  SamplingStrategyName'
  #-}

instance Prelude.FromText SamplingStrategyName where
  parser = SamplingStrategyName' Prelude.<$> Prelude.takeText

instance Prelude.ToText SamplingStrategyName where
  toText (SamplingStrategyName' x) = x

instance Prelude.Hashable SamplingStrategyName

instance Prelude.NFData SamplingStrategyName

instance Prelude.ToByteString SamplingStrategyName

instance Prelude.ToQuery SamplingStrategyName

instance Prelude.ToHeader SamplingStrategyName

instance Prelude.ToJSON SamplingStrategyName where
  toJSON = Prelude.toJSONText
