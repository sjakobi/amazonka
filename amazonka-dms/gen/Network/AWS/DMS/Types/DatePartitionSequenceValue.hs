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
-- Module      : Network.AWS.DMS.Types.DatePartitionSequenceValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.DatePartitionSequenceValue
  ( DatePartitionSequenceValue
      ( ..,
        DatePartitionSequenceValueDDMMYYYY,
        DatePartitionSequenceValueMMYYYYDD,
        DatePartitionSequenceValueYYYYMM,
        DatePartitionSequenceValueYYYYMMDD,
        DatePartitionSequenceValueYYYYMMDDHH
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DatePartitionSequenceValue = DatePartitionSequenceValue'
  { fromDatePartitionSequenceValue ::
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

pattern DatePartitionSequenceValueDDMMYYYY :: DatePartitionSequenceValue
pattern DatePartitionSequenceValueDDMMYYYY = DatePartitionSequenceValue' "DDMMYYYY"

pattern DatePartitionSequenceValueMMYYYYDD :: DatePartitionSequenceValue
pattern DatePartitionSequenceValueMMYYYYDD = DatePartitionSequenceValue' "MMYYYYDD"

pattern DatePartitionSequenceValueYYYYMM :: DatePartitionSequenceValue
pattern DatePartitionSequenceValueYYYYMM = DatePartitionSequenceValue' "YYYYMM"

pattern DatePartitionSequenceValueYYYYMMDD :: DatePartitionSequenceValue
pattern DatePartitionSequenceValueYYYYMMDD = DatePartitionSequenceValue' "YYYYMMDD"

pattern DatePartitionSequenceValueYYYYMMDDHH :: DatePartitionSequenceValue
pattern DatePartitionSequenceValueYYYYMMDDHH = DatePartitionSequenceValue' "YYYYMMDDHH"

{-# COMPLETE
  DatePartitionSequenceValueDDMMYYYY,
  DatePartitionSequenceValueMMYYYYDD,
  DatePartitionSequenceValueYYYYMM,
  DatePartitionSequenceValueYYYYMMDD,
  DatePartitionSequenceValueYYYYMMDDHH,
  DatePartitionSequenceValue'
  #-}

instance Prelude.FromText DatePartitionSequenceValue where
  parser = DatePartitionSequenceValue' Prelude.<$> Prelude.takeText

instance Prelude.ToText DatePartitionSequenceValue where
  toText (DatePartitionSequenceValue' x) = x

instance Prelude.Hashable DatePartitionSequenceValue

instance Prelude.NFData DatePartitionSequenceValue

instance Prelude.ToByteString DatePartitionSequenceValue

instance Prelude.ToQuery DatePartitionSequenceValue

instance Prelude.ToHeader DatePartitionSequenceValue

instance Prelude.ToJSON DatePartitionSequenceValue where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DatePartitionSequenceValue where
  parseJSON = Prelude.parseJSONText "DatePartitionSequenceValue"
