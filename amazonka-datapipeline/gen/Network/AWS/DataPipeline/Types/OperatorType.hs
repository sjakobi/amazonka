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
-- Module      : Network.AWS.DataPipeline.Types.OperatorType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DataPipeline.Types.OperatorType
  ( OperatorType
      ( ..,
        OperatorTypeBETWEEN,
        OperatorTypeEQ,
        OperatorTypeGE,
        OperatorTypeLE,
        OperatorTypeREFEQ
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype OperatorType = OperatorType'
  { fromOperatorType ::
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

pattern OperatorTypeBETWEEN :: OperatorType
pattern OperatorTypeBETWEEN = OperatorType' "BETWEEN"

pattern OperatorTypeEQ :: OperatorType
pattern OperatorTypeEQ = OperatorType' "EQ"

pattern OperatorTypeGE :: OperatorType
pattern OperatorTypeGE = OperatorType' "GE"

pattern OperatorTypeLE :: OperatorType
pattern OperatorTypeLE = OperatorType' "LE"

pattern OperatorTypeREFEQ :: OperatorType
pattern OperatorTypeREFEQ = OperatorType' "REF_EQ"

{-# COMPLETE
  OperatorTypeBETWEEN,
  OperatorTypeEQ,
  OperatorTypeGE,
  OperatorTypeLE,
  OperatorTypeREFEQ,
  OperatorType'
  #-}

instance Prelude.FromText OperatorType where
  parser = OperatorType' Prelude.<$> Prelude.takeText

instance Prelude.ToText OperatorType where
  toText (OperatorType' x) = x

instance Prelude.Hashable OperatorType

instance Prelude.NFData OperatorType

instance Prelude.ToByteString OperatorType

instance Prelude.ToQuery OperatorType

instance Prelude.ToHeader OperatorType

instance Prelude.ToJSON OperatorType where
  toJSON = Prelude.toJSONText
