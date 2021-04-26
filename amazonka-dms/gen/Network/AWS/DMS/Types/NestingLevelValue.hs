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
-- Module      : Network.AWS.DMS.Types.NestingLevelValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.NestingLevelValue
  ( NestingLevelValue
      ( ..,
        NestingLevelValueNone,
        NestingLevelValueOne
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype NestingLevelValue = NestingLevelValue'
  { fromNestingLevelValue ::
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

pattern NestingLevelValueNone :: NestingLevelValue
pattern NestingLevelValueNone = NestingLevelValue' "none"

pattern NestingLevelValueOne :: NestingLevelValue
pattern NestingLevelValueOne = NestingLevelValue' "one"

{-# COMPLETE
  NestingLevelValueNone,
  NestingLevelValueOne,
  NestingLevelValue'
  #-}

instance Prelude.FromText NestingLevelValue where
  parser = NestingLevelValue' Prelude.<$> Prelude.takeText

instance Prelude.ToText NestingLevelValue where
  toText (NestingLevelValue' x) = x

instance Prelude.Hashable NestingLevelValue

instance Prelude.NFData NestingLevelValue

instance Prelude.ToByteString NestingLevelValue

instance Prelude.ToQuery NestingLevelValue

instance Prelude.ToHeader NestingLevelValue

instance Prelude.ToJSON NestingLevelValue where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON NestingLevelValue where
  parseJSON = Prelude.parseJSONText "NestingLevelValue"
