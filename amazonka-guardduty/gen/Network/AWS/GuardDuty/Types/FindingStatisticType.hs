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
-- Module      : Network.AWS.GuardDuty.Types.FindingStatisticType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GuardDuty.Types.FindingStatisticType
  ( FindingStatisticType
      ( ..,
        FindingStatisticTypeCOUNTBYSEVERITY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype FindingStatisticType = FindingStatisticType'
  { fromFindingStatisticType ::
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

pattern FindingStatisticTypeCOUNTBYSEVERITY :: FindingStatisticType
pattern FindingStatisticTypeCOUNTBYSEVERITY = FindingStatisticType' "COUNT_BY_SEVERITY"

{-# COMPLETE
  FindingStatisticTypeCOUNTBYSEVERITY,
  FindingStatisticType'
  #-}

instance Prelude.FromText FindingStatisticType where
  parser = FindingStatisticType' Prelude.<$> Prelude.takeText

instance Prelude.ToText FindingStatisticType where
  toText (FindingStatisticType' x) = x

instance Prelude.Hashable FindingStatisticType

instance Prelude.NFData FindingStatisticType

instance Prelude.ToByteString FindingStatisticType

instance Prelude.ToQuery FindingStatisticType

instance Prelude.ToHeader FindingStatisticType

instance Prelude.ToJSON FindingStatisticType where
  toJSON = Prelude.toJSONText
