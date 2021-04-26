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
-- Module      : Network.AWS.Kinesis.Types.ShardFilterType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Kinesis.Types.ShardFilterType
  ( ShardFilterType
      ( ..,
        ShardFilterTypeAFTERSHARDID,
        ShardFilterTypeATLATEST,
        ShardFilterTypeATTIMESTAMP,
        ShardFilterTypeATTRIMHORIZON,
        ShardFilterTypeFROMTIMESTAMP,
        ShardFilterTypeFROMTRIMHORIZON
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ShardFilterType = ShardFilterType'
  { fromShardFilterType ::
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

pattern ShardFilterTypeAFTERSHARDID :: ShardFilterType
pattern ShardFilterTypeAFTERSHARDID = ShardFilterType' "AFTER_SHARD_ID"

pattern ShardFilterTypeATLATEST :: ShardFilterType
pattern ShardFilterTypeATLATEST = ShardFilterType' "AT_LATEST"

pattern ShardFilterTypeATTIMESTAMP :: ShardFilterType
pattern ShardFilterTypeATTIMESTAMP = ShardFilterType' "AT_TIMESTAMP"

pattern ShardFilterTypeATTRIMHORIZON :: ShardFilterType
pattern ShardFilterTypeATTRIMHORIZON = ShardFilterType' "AT_TRIM_HORIZON"

pattern ShardFilterTypeFROMTIMESTAMP :: ShardFilterType
pattern ShardFilterTypeFROMTIMESTAMP = ShardFilterType' "FROM_TIMESTAMP"

pattern ShardFilterTypeFROMTRIMHORIZON :: ShardFilterType
pattern ShardFilterTypeFROMTRIMHORIZON = ShardFilterType' "FROM_TRIM_HORIZON"

{-# COMPLETE
  ShardFilterTypeAFTERSHARDID,
  ShardFilterTypeATLATEST,
  ShardFilterTypeATTIMESTAMP,
  ShardFilterTypeATTRIMHORIZON,
  ShardFilterTypeFROMTIMESTAMP,
  ShardFilterTypeFROMTRIMHORIZON,
  ShardFilterType'
  #-}

instance Prelude.FromText ShardFilterType where
  parser = ShardFilterType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ShardFilterType where
  toText (ShardFilterType' x) = x

instance Prelude.Hashable ShardFilterType

instance Prelude.NFData ShardFilterType

instance Prelude.ToByteString ShardFilterType

instance Prelude.ToQuery ShardFilterType

instance Prelude.ToHeader ShardFilterType

instance Prelude.ToJSON ShardFilterType where
  toJSON = Prelude.toJSONText
