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
-- Module      : Network.AWS.WAFRegional.Types.PositionalConstraint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WAFRegional.Types.PositionalConstraint
  ( PositionalConstraint
      ( ..,
        PositionalConstraintCONTAINS,
        PositionalConstraintCONTAINSWORD,
        PositionalConstraintENDSWITH,
        PositionalConstraintEXACTLY,
        PositionalConstraintSTARTSWITH
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PositionalConstraint = PositionalConstraint'
  { fromPositionalConstraint ::
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

pattern PositionalConstraintCONTAINS :: PositionalConstraint
pattern PositionalConstraintCONTAINS = PositionalConstraint' "CONTAINS"

pattern PositionalConstraintCONTAINSWORD :: PositionalConstraint
pattern PositionalConstraintCONTAINSWORD = PositionalConstraint' "CONTAINS_WORD"

pattern PositionalConstraintENDSWITH :: PositionalConstraint
pattern PositionalConstraintENDSWITH = PositionalConstraint' "ENDS_WITH"

pattern PositionalConstraintEXACTLY :: PositionalConstraint
pattern PositionalConstraintEXACTLY = PositionalConstraint' "EXACTLY"

pattern PositionalConstraintSTARTSWITH :: PositionalConstraint
pattern PositionalConstraintSTARTSWITH = PositionalConstraint' "STARTS_WITH"

{-# COMPLETE
  PositionalConstraintCONTAINS,
  PositionalConstraintCONTAINSWORD,
  PositionalConstraintENDSWITH,
  PositionalConstraintEXACTLY,
  PositionalConstraintSTARTSWITH,
  PositionalConstraint'
  #-}

instance Prelude.FromText PositionalConstraint where
  parser = PositionalConstraint' Prelude.<$> Prelude.takeText

instance Prelude.ToText PositionalConstraint where
  toText (PositionalConstraint' x) = x

instance Prelude.Hashable PositionalConstraint

instance Prelude.NFData PositionalConstraint

instance Prelude.ToByteString PositionalConstraint

instance Prelude.ToQuery PositionalConstraint

instance Prelude.ToHeader PositionalConstraint

instance Prelude.ToJSON PositionalConstraint where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON PositionalConstraint where
  parseJSON = Prelude.parseJSONText "PositionalConstraint"
