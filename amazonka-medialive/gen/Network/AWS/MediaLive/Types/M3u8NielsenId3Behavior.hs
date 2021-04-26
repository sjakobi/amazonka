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
-- Module      : Network.AWS.MediaLive.Types.M3u8NielsenId3Behavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.M3u8NielsenId3Behavior
  ( M3u8NielsenId3Behavior
      ( ..,
        M3u8NielsenId3BehaviorNOPASSTHROUGH,
        M3u8NielsenId3BehaviorPASSTHROUGH
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | M3u8 Nielsen Id3 Behavior
newtype M3u8NielsenId3Behavior = M3u8NielsenId3Behavior'
  { fromM3u8NielsenId3Behavior ::
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

pattern M3u8NielsenId3BehaviorNOPASSTHROUGH :: M3u8NielsenId3Behavior
pattern M3u8NielsenId3BehaviorNOPASSTHROUGH = M3u8NielsenId3Behavior' "NO_PASSTHROUGH"

pattern M3u8NielsenId3BehaviorPASSTHROUGH :: M3u8NielsenId3Behavior
pattern M3u8NielsenId3BehaviorPASSTHROUGH = M3u8NielsenId3Behavior' "PASSTHROUGH"

{-# COMPLETE
  M3u8NielsenId3BehaviorNOPASSTHROUGH,
  M3u8NielsenId3BehaviorPASSTHROUGH,
  M3u8NielsenId3Behavior'
  #-}

instance Prelude.FromText M3u8NielsenId3Behavior where
  parser = M3u8NielsenId3Behavior' Prelude.<$> Prelude.takeText

instance Prelude.ToText M3u8NielsenId3Behavior where
  toText (M3u8NielsenId3Behavior' x) = x

instance Prelude.Hashable M3u8NielsenId3Behavior

instance Prelude.NFData M3u8NielsenId3Behavior

instance Prelude.ToByteString M3u8NielsenId3Behavior

instance Prelude.ToQuery M3u8NielsenId3Behavior

instance Prelude.ToHeader M3u8NielsenId3Behavior

instance Prelude.ToJSON M3u8NielsenId3Behavior where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON M3u8NielsenId3Behavior where
  parseJSON = Prelude.parseJSONText "M3u8NielsenId3Behavior"
