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
-- Module      : Network.AWS.Kinesis.Types.ShardIteratorType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Kinesis.Types.ShardIteratorType
  ( ShardIteratorType
      ( ..,
        ShardIteratorTypeAFTERSEQUENCENUMBER,
        ShardIteratorTypeATSEQUENCENUMBER,
        ShardIteratorTypeATTIMESTAMP,
        ShardIteratorTypeLATEST,
        ShardIteratorTypeTRIMHORIZON
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ShardIteratorType = ShardIteratorType'
  { fromShardIteratorType ::
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

pattern ShardIteratorTypeAFTERSEQUENCENUMBER :: ShardIteratorType
pattern ShardIteratorTypeAFTERSEQUENCENUMBER = ShardIteratorType' "AFTER_SEQUENCE_NUMBER"

pattern ShardIteratorTypeATSEQUENCENUMBER :: ShardIteratorType
pattern ShardIteratorTypeATSEQUENCENUMBER = ShardIteratorType' "AT_SEQUENCE_NUMBER"

pattern ShardIteratorTypeATTIMESTAMP :: ShardIteratorType
pattern ShardIteratorTypeATTIMESTAMP = ShardIteratorType' "AT_TIMESTAMP"

pattern ShardIteratorTypeLATEST :: ShardIteratorType
pattern ShardIteratorTypeLATEST = ShardIteratorType' "LATEST"

pattern ShardIteratorTypeTRIMHORIZON :: ShardIteratorType
pattern ShardIteratorTypeTRIMHORIZON = ShardIteratorType' "TRIM_HORIZON"

{-# COMPLETE
  ShardIteratorTypeAFTERSEQUENCENUMBER,
  ShardIteratorTypeATSEQUENCENUMBER,
  ShardIteratorTypeATTIMESTAMP,
  ShardIteratorTypeLATEST,
  ShardIteratorTypeTRIMHORIZON,
  ShardIteratorType'
  #-}

instance Prelude.FromText ShardIteratorType where
  parser = ShardIteratorType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ShardIteratorType where
  toText (ShardIteratorType' x) = x

instance Prelude.Hashable ShardIteratorType

instance Prelude.NFData ShardIteratorType

instance Prelude.ToByteString ShardIteratorType

instance Prelude.ToQuery ShardIteratorType

instance Prelude.ToHeader ShardIteratorType

instance Prelude.ToJSON ShardIteratorType where
  toJSON = Prelude.toJSONText
