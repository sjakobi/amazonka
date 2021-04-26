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
-- Module      : Network.AWS.Glue.Types.ExistCondition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.ExistCondition
  ( ExistCondition
      ( ..,
        ExistConditionMUSTEXIST,
        ExistConditionNONE,
        ExistConditionNOTEXIST
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ExistCondition = ExistCondition'
  { fromExistCondition ::
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

pattern ExistConditionMUSTEXIST :: ExistCondition
pattern ExistConditionMUSTEXIST = ExistCondition' "MUST_EXIST"

pattern ExistConditionNONE :: ExistCondition
pattern ExistConditionNONE = ExistCondition' "NONE"

pattern ExistConditionNOTEXIST :: ExistCondition
pattern ExistConditionNOTEXIST = ExistCondition' "NOT_EXIST"

{-# COMPLETE
  ExistConditionMUSTEXIST,
  ExistConditionNONE,
  ExistConditionNOTEXIST,
  ExistCondition'
  #-}

instance Prelude.FromText ExistCondition where
  parser = ExistCondition' Prelude.<$> Prelude.takeText

instance Prelude.ToText ExistCondition where
  toText (ExistCondition' x) = x

instance Prelude.Hashable ExistCondition

instance Prelude.NFData ExistCondition

instance Prelude.ToByteString ExistCondition

instance Prelude.ToQuery ExistCondition

instance Prelude.ToHeader ExistCondition

instance Prelude.ToJSON ExistCondition where
  toJSON = Prelude.toJSONText
