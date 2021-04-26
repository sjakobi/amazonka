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
-- Module      : Network.AWS.CostExplorer.Types.SavingsPlansDataType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.SavingsPlansDataType
  ( SavingsPlansDataType
      ( ..,
        SavingsPlansDataTypeAMORTIZEDCOMMITMENT,
        SavingsPlansDataTypeATTRIBUTES,
        SavingsPlansDataTypeSAVINGS,
        SavingsPlansDataTypeUTILIZATION
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SavingsPlansDataType = SavingsPlansDataType'
  { fromSavingsPlansDataType ::
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

pattern SavingsPlansDataTypeAMORTIZEDCOMMITMENT :: SavingsPlansDataType
pattern SavingsPlansDataTypeAMORTIZEDCOMMITMENT = SavingsPlansDataType' "AMORTIZED_COMMITMENT"

pattern SavingsPlansDataTypeATTRIBUTES :: SavingsPlansDataType
pattern SavingsPlansDataTypeATTRIBUTES = SavingsPlansDataType' "ATTRIBUTES"

pattern SavingsPlansDataTypeSAVINGS :: SavingsPlansDataType
pattern SavingsPlansDataTypeSAVINGS = SavingsPlansDataType' "SAVINGS"

pattern SavingsPlansDataTypeUTILIZATION :: SavingsPlansDataType
pattern SavingsPlansDataTypeUTILIZATION = SavingsPlansDataType' "UTILIZATION"

{-# COMPLETE
  SavingsPlansDataTypeAMORTIZEDCOMMITMENT,
  SavingsPlansDataTypeATTRIBUTES,
  SavingsPlansDataTypeSAVINGS,
  SavingsPlansDataTypeUTILIZATION,
  SavingsPlansDataType'
  #-}

instance Prelude.FromText SavingsPlansDataType where
  parser = SavingsPlansDataType' Prelude.<$> Prelude.takeText

instance Prelude.ToText SavingsPlansDataType where
  toText (SavingsPlansDataType' x) = x

instance Prelude.Hashable SavingsPlansDataType

instance Prelude.NFData SavingsPlansDataType

instance Prelude.ToByteString SavingsPlansDataType

instance Prelude.ToQuery SavingsPlansDataType

instance Prelude.ToHeader SavingsPlansDataType

instance Prelude.ToJSON SavingsPlansDataType where
  toJSON = Prelude.toJSONText
