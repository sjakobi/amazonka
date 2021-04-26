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
-- Module      : Network.AWS.ElastiCache.Types.AZMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.AZMode
  ( AZMode
      ( ..,
        AZModeCrossAz,
        AZModeSingleAz
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AZMode = AZMode' {fromAZMode :: Prelude.Text}
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern AZModeCrossAz :: AZMode
pattern AZModeCrossAz = AZMode' "cross-az"

pattern AZModeSingleAz :: AZMode
pattern AZModeSingleAz = AZMode' "single-az"

{-# COMPLETE
  AZModeCrossAz,
  AZModeSingleAz,
  AZMode'
  #-}

instance Prelude.FromText AZMode where
  parser = AZMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText AZMode where
  toText (AZMode' x) = x

instance Prelude.Hashable AZMode

instance Prelude.NFData AZMode

instance Prelude.ToByteString AZMode

instance Prelude.ToQuery AZMode

instance Prelude.ToHeader AZMode
