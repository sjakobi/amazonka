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
-- Module      : Network.AWS.DynamoDB.Types.Select
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.Select
  ( Select
      ( ..,
        SelectALLATTRIBUTES,
        SelectALLPROJECTEDATTRIBUTES,
        SelectCOUNT,
        SelectSPECIFICATTRIBUTES
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Select = Select' {fromSelect :: Prelude.Text}
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern SelectALLATTRIBUTES :: Select
pattern SelectALLATTRIBUTES = Select' "ALL_ATTRIBUTES"

pattern SelectALLPROJECTEDATTRIBUTES :: Select
pattern SelectALLPROJECTEDATTRIBUTES = Select' "ALL_PROJECTED_ATTRIBUTES"

pattern SelectCOUNT :: Select
pattern SelectCOUNT = Select' "COUNT"

pattern SelectSPECIFICATTRIBUTES :: Select
pattern SelectSPECIFICATTRIBUTES = Select' "SPECIFIC_ATTRIBUTES"

{-# COMPLETE
  SelectALLATTRIBUTES,
  SelectALLPROJECTEDATTRIBUTES,
  SelectCOUNT,
  SelectSPECIFICATTRIBUTES,
  Select'
  #-}

instance Prelude.FromText Select where
  parser = Select' Prelude.<$> Prelude.takeText

instance Prelude.ToText Select where
  toText (Select' x) = x

instance Prelude.Hashable Select

instance Prelude.NFData Select

instance Prelude.ToByteString Select

instance Prelude.ToQuery Select

instance Prelude.ToHeader Select

instance Prelude.ToJSON Select where
  toJSON = Prelude.toJSONText
