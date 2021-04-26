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
-- Module      : Network.AWS.GuardDuty.Types.UsageStatisticType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GuardDuty.Types.UsageStatisticType
  ( UsageStatisticType
      ( ..,
        UsageStatisticTypeSUMBYACCOUNT,
        UsageStatisticTypeSUMBYDATASOURCE,
        UsageStatisticTypeSUMBYRESOURCE,
        UsageStatisticTypeTOPRESOURCES
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype UsageStatisticType = UsageStatisticType'
  { fromUsageStatisticType ::
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

pattern UsageStatisticTypeSUMBYACCOUNT :: UsageStatisticType
pattern UsageStatisticTypeSUMBYACCOUNT = UsageStatisticType' "SUM_BY_ACCOUNT"

pattern UsageStatisticTypeSUMBYDATASOURCE :: UsageStatisticType
pattern UsageStatisticTypeSUMBYDATASOURCE = UsageStatisticType' "SUM_BY_DATA_SOURCE"

pattern UsageStatisticTypeSUMBYRESOURCE :: UsageStatisticType
pattern UsageStatisticTypeSUMBYRESOURCE = UsageStatisticType' "SUM_BY_RESOURCE"

pattern UsageStatisticTypeTOPRESOURCES :: UsageStatisticType
pattern UsageStatisticTypeTOPRESOURCES = UsageStatisticType' "TOP_RESOURCES"

{-# COMPLETE
  UsageStatisticTypeSUMBYACCOUNT,
  UsageStatisticTypeSUMBYDATASOURCE,
  UsageStatisticTypeSUMBYRESOURCE,
  UsageStatisticTypeTOPRESOURCES,
  UsageStatisticType'
  #-}

instance Prelude.FromText UsageStatisticType where
  parser = UsageStatisticType' Prelude.<$> Prelude.takeText

instance Prelude.ToText UsageStatisticType where
  toText (UsageStatisticType' x) = x

instance Prelude.Hashable UsageStatisticType

instance Prelude.NFData UsageStatisticType

instance Prelude.ToByteString UsageStatisticType

instance Prelude.ToQuery UsageStatisticType

instance Prelude.ToHeader UsageStatisticType

instance Prelude.ToJSON UsageStatisticType where
  toJSON = Prelude.toJSONText
