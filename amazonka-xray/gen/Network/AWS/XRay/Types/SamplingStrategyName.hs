{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        FixedRate,
        PartialScan
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SamplingStrategyName
  = SamplingStrategyName'
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

pattern FixedRate :: SamplingStrategyName
pattern FixedRate = SamplingStrategyName' "FixedRate"

pattern PartialScan :: SamplingStrategyName
pattern PartialScan = SamplingStrategyName' "PartialScan"

{-# COMPLETE
  FixedRate,
  PartialScan,
  SamplingStrategyName'
  #-}

instance FromText SamplingStrategyName where
  parser = (SamplingStrategyName' . mk) <$> takeText

instance ToText SamplingStrategyName where
  toText (SamplingStrategyName' ci) = original ci

instance Hashable SamplingStrategyName

instance NFData SamplingStrategyName

instance ToByteString SamplingStrategyName

instance ToQuery SamplingStrategyName

instance ToHeader SamplingStrategyName

instance ToJSON SamplingStrategyName where
  toJSON = toJSONText
