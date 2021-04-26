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
-- Module      : Network.AWS.CloudDirectory.Types.RangeMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.RangeMode
  ( RangeMode
      ( ..,
        RangeModeEXCLUSIVE,
        RangeModeFIRST,
        RangeModeINCLUSIVE,
        RangeModeLAST,
        RangeModeLASTBEFOREMISSINGVALUES
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RangeMode = RangeMode'
  { fromRangeMode ::
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

pattern RangeModeEXCLUSIVE :: RangeMode
pattern RangeModeEXCLUSIVE = RangeMode' "EXCLUSIVE"

pattern RangeModeFIRST :: RangeMode
pattern RangeModeFIRST = RangeMode' "FIRST"

pattern RangeModeINCLUSIVE :: RangeMode
pattern RangeModeINCLUSIVE = RangeMode' "INCLUSIVE"

pattern RangeModeLAST :: RangeMode
pattern RangeModeLAST = RangeMode' "LAST"

pattern RangeModeLASTBEFOREMISSINGVALUES :: RangeMode
pattern RangeModeLASTBEFOREMISSINGVALUES = RangeMode' "LAST_BEFORE_MISSING_VALUES"

{-# COMPLETE
  RangeModeEXCLUSIVE,
  RangeModeFIRST,
  RangeModeINCLUSIVE,
  RangeModeLAST,
  RangeModeLASTBEFOREMISSINGVALUES,
  RangeMode'
  #-}

instance Prelude.FromText RangeMode where
  parser = RangeMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText RangeMode where
  toText (RangeMode' x) = x

instance Prelude.Hashable RangeMode

instance Prelude.NFData RangeMode

instance Prelude.ToByteString RangeMode

instance Prelude.ToQuery RangeMode

instance Prelude.ToHeader RangeMode

instance Prelude.ToJSON RangeMode where
  toJSON = Prelude.toJSONText
