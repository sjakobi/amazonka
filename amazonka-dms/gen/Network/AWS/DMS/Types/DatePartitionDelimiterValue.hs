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
-- Module      : Network.AWS.DMS.Types.DatePartitionDelimiterValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.DatePartitionDelimiterValue
  ( DatePartitionDelimiterValue
      ( ..,
        DatePartitionDelimiterValueDASH,
        DatePartitionDelimiterValueNONE,
        DatePartitionDelimiterValueSLASH,
        DatePartitionDelimiterValueUNDERSCORE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DatePartitionDelimiterValue = DatePartitionDelimiterValue'
  { fromDatePartitionDelimiterValue ::
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

pattern DatePartitionDelimiterValueDASH :: DatePartitionDelimiterValue
pattern DatePartitionDelimiterValueDASH = DatePartitionDelimiterValue' "DASH"

pattern DatePartitionDelimiterValueNONE :: DatePartitionDelimiterValue
pattern DatePartitionDelimiterValueNONE = DatePartitionDelimiterValue' "NONE"

pattern DatePartitionDelimiterValueSLASH :: DatePartitionDelimiterValue
pattern DatePartitionDelimiterValueSLASH = DatePartitionDelimiterValue' "SLASH"

pattern DatePartitionDelimiterValueUNDERSCORE :: DatePartitionDelimiterValue
pattern DatePartitionDelimiterValueUNDERSCORE = DatePartitionDelimiterValue' "UNDERSCORE"

{-# COMPLETE
  DatePartitionDelimiterValueDASH,
  DatePartitionDelimiterValueNONE,
  DatePartitionDelimiterValueSLASH,
  DatePartitionDelimiterValueUNDERSCORE,
  DatePartitionDelimiterValue'
  #-}

instance Prelude.FromText DatePartitionDelimiterValue where
  parser = DatePartitionDelimiterValue' Prelude.<$> Prelude.takeText

instance Prelude.ToText DatePartitionDelimiterValue where
  toText (DatePartitionDelimiterValue' x) = x

instance Prelude.Hashable DatePartitionDelimiterValue

instance Prelude.NFData DatePartitionDelimiterValue

instance Prelude.ToByteString DatePartitionDelimiterValue

instance Prelude.ToQuery DatePartitionDelimiterValue

instance Prelude.ToHeader DatePartitionDelimiterValue

instance Prelude.ToJSON DatePartitionDelimiterValue where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DatePartitionDelimiterValue where
  parseJSON = Prelude.parseJSONText "DatePartitionDelimiterValue"
