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
-- Module      : Network.AWS.Pinpoint.Types.Duration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.Duration
  ( Duration
      ( ..,
        DurationDAY14,
        DurationDAY30,
        DurationDAY7,
        DurationHR24
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Duration = Duration'
  { fromDuration ::
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

pattern DurationDAY14 :: Duration
pattern DurationDAY14 = Duration' "DAY_14"

pattern DurationDAY30 :: Duration
pattern DurationDAY30 = Duration' "DAY_30"

pattern DurationDAY7 :: Duration
pattern DurationDAY7 = Duration' "DAY_7"

pattern DurationHR24 :: Duration
pattern DurationHR24 = Duration' "HR_24"

{-# COMPLETE
  DurationDAY14,
  DurationDAY30,
  DurationDAY7,
  DurationHR24,
  Duration'
  #-}

instance Prelude.FromText Duration where
  parser = Duration' Prelude.<$> Prelude.takeText

instance Prelude.ToText Duration where
  toText (Duration' x) = x

instance Prelude.Hashable Duration

instance Prelude.NFData Duration

instance Prelude.ToByteString Duration

instance Prelude.ToQuery Duration

instance Prelude.ToHeader Duration

instance Prelude.ToJSON Duration where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Duration where
  parseJSON = Prelude.parseJSONText "Duration"
