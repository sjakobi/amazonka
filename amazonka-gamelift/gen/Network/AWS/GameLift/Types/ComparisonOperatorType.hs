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
-- Module      : Network.AWS.GameLift.Types.ComparisonOperatorType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.ComparisonOperatorType
  ( ComparisonOperatorType
      ( ..,
        ComparisonOperatorTypeGreaterThanOrEqualToThreshold,
        ComparisonOperatorTypeGreaterThanThreshold,
        ComparisonOperatorTypeLessThanOrEqualToThreshold,
        ComparisonOperatorTypeLessThanThreshold
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ComparisonOperatorType = ComparisonOperatorType'
  { fromComparisonOperatorType ::
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

pattern ComparisonOperatorTypeGreaterThanOrEqualToThreshold :: ComparisonOperatorType
pattern ComparisonOperatorTypeGreaterThanOrEqualToThreshold = ComparisonOperatorType' "GreaterThanOrEqualToThreshold"

pattern ComparisonOperatorTypeGreaterThanThreshold :: ComparisonOperatorType
pattern ComparisonOperatorTypeGreaterThanThreshold = ComparisonOperatorType' "GreaterThanThreshold"

pattern ComparisonOperatorTypeLessThanOrEqualToThreshold :: ComparisonOperatorType
pattern ComparisonOperatorTypeLessThanOrEqualToThreshold = ComparisonOperatorType' "LessThanOrEqualToThreshold"

pattern ComparisonOperatorTypeLessThanThreshold :: ComparisonOperatorType
pattern ComparisonOperatorTypeLessThanThreshold = ComparisonOperatorType' "LessThanThreshold"

{-# COMPLETE
  ComparisonOperatorTypeGreaterThanOrEqualToThreshold,
  ComparisonOperatorTypeGreaterThanThreshold,
  ComparisonOperatorTypeLessThanOrEqualToThreshold,
  ComparisonOperatorTypeLessThanThreshold,
  ComparisonOperatorType'
  #-}

instance Prelude.FromText ComparisonOperatorType where
  parser = ComparisonOperatorType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ComparisonOperatorType where
  toText (ComparisonOperatorType' x) = x

instance Prelude.Hashable ComparisonOperatorType

instance Prelude.NFData ComparisonOperatorType

instance Prelude.ToByteString ComparisonOperatorType

instance Prelude.ToQuery ComparisonOperatorType

instance Prelude.ToHeader ComparisonOperatorType

instance Prelude.ToJSON ComparisonOperatorType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ComparisonOperatorType where
  parseJSON = Prelude.parseJSONText "ComparisonOperatorType"
