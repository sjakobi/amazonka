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
-- Module      : Network.AWS.CloudDirectory.Types.RuleType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.RuleType
  ( RuleType
      ( ..,
        RuleTypeBINARYLENGTH,
        RuleTypeNUMBERCOMPARISON,
        RuleTypeSTRINGFROMSET,
        RuleTypeSTRINGLENGTH
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RuleType = RuleType'
  { fromRuleType ::
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

pattern RuleTypeBINARYLENGTH :: RuleType
pattern RuleTypeBINARYLENGTH = RuleType' "BINARY_LENGTH"

pattern RuleTypeNUMBERCOMPARISON :: RuleType
pattern RuleTypeNUMBERCOMPARISON = RuleType' "NUMBER_COMPARISON"

pattern RuleTypeSTRINGFROMSET :: RuleType
pattern RuleTypeSTRINGFROMSET = RuleType' "STRING_FROM_SET"

pattern RuleTypeSTRINGLENGTH :: RuleType
pattern RuleTypeSTRINGLENGTH = RuleType' "STRING_LENGTH"

{-# COMPLETE
  RuleTypeBINARYLENGTH,
  RuleTypeNUMBERCOMPARISON,
  RuleTypeSTRINGFROMSET,
  RuleTypeSTRINGLENGTH,
  RuleType'
  #-}

instance Prelude.FromText RuleType where
  parser = RuleType' Prelude.<$> Prelude.takeText

instance Prelude.ToText RuleType where
  toText (RuleType' x) = x

instance Prelude.Hashable RuleType

instance Prelude.NFData RuleType

instance Prelude.ToByteString RuleType

instance Prelude.ToQuery RuleType

instance Prelude.ToHeader RuleType

instance Prelude.ToJSON RuleType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON RuleType where
  parseJSON = Prelude.parseJSONText "RuleType"
