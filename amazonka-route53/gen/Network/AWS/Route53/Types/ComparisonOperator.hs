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
-- Module      : Network.AWS.Route53.Types.ComparisonOperator
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53.Types.ComparisonOperator
  ( ComparisonOperator
      ( ..,
        ComparisonOperatorGreaterThanOrEqualToThreshold,
        ComparisonOperatorGreaterThanThreshold,
        ComparisonOperatorLessThanOrEqualToThreshold,
        ComparisonOperatorLessThanThreshold
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Route53.Internal

newtype ComparisonOperator = ComparisonOperator'
  { fromComparisonOperator ::
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

pattern ComparisonOperatorGreaterThanOrEqualToThreshold :: ComparisonOperator
pattern ComparisonOperatorGreaterThanOrEqualToThreshold = ComparisonOperator' "GreaterThanOrEqualToThreshold"

pattern ComparisonOperatorGreaterThanThreshold :: ComparisonOperator
pattern ComparisonOperatorGreaterThanThreshold = ComparisonOperator' "GreaterThanThreshold"

pattern ComparisonOperatorLessThanOrEqualToThreshold :: ComparisonOperator
pattern ComparisonOperatorLessThanOrEqualToThreshold = ComparisonOperator' "LessThanOrEqualToThreshold"

pattern ComparisonOperatorLessThanThreshold :: ComparisonOperator
pattern ComparisonOperatorLessThanThreshold = ComparisonOperator' "LessThanThreshold"

{-# COMPLETE
  ComparisonOperatorGreaterThanOrEqualToThreshold,
  ComparisonOperatorGreaterThanThreshold,
  ComparisonOperatorLessThanOrEqualToThreshold,
  ComparisonOperatorLessThanThreshold,
  ComparisonOperator'
  #-}

instance Prelude.FromText ComparisonOperator where
  parser = ComparisonOperator' Prelude.<$> Prelude.takeText

instance Prelude.ToText ComparisonOperator where
  toText (ComparisonOperator' x) = x

instance Prelude.Hashable ComparisonOperator

instance Prelude.NFData ComparisonOperator

instance Prelude.ToByteString ComparisonOperator

instance Prelude.ToQuery ComparisonOperator

instance Prelude.ToHeader ComparisonOperator

instance Prelude.FromXML ComparisonOperator where
  parseXML = Prelude.parseXMLText "ComparisonOperator"
