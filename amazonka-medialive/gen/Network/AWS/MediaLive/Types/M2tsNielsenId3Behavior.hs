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
-- Module      : Network.AWS.MediaLive.Types.M2tsNielsenId3Behavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.M2tsNielsenId3Behavior
  ( M2tsNielsenId3Behavior
      ( ..,
        M2tsNielsenId3BehaviorNOPASSTHROUGH,
        M2tsNielsenId3BehaviorPASSTHROUGH
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | M2ts Nielsen Id3 Behavior
newtype M2tsNielsenId3Behavior = M2tsNielsenId3Behavior'
  { fromM2tsNielsenId3Behavior ::
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

pattern M2tsNielsenId3BehaviorNOPASSTHROUGH :: M2tsNielsenId3Behavior
pattern M2tsNielsenId3BehaviorNOPASSTHROUGH = M2tsNielsenId3Behavior' "NO_PASSTHROUGH"

pattern M2tsNielsenId3BehaviorPASSTHROUGH :: M2tsNielsenId3Behavior
pattern M2tsNielsenId3BehaviorPASSTHROUGH = M2tsNielsenId3Behavior' "PASSTHROUGH"

{-# COMPLETE
  M2tsNielsenId3BehaviorNOPASSTHROUGH,
  M2tsNielsenId3BehaviorPASSTHROUGH,
  M2tsNielsenId3Behavior'
  #-}

instance Prelude.FromText M2tsNielsenId3Behavior where
  parser = M2tsNielsenId3Behavior' Prelude.<$> Prelude.takeText

instance Prelude.ToText M2tsNielsenId3Behavior where
  toText (M2tsNielsenId3Behavior' x) = x

instance Prelude.Hashable M2tsNielsenId3Behavior

instance Prelude.NFData M2tsNielsenId3Behavior

instance Prelude.ToByteString M2tsNielsenId3Behavior

instance Prelude.ToQuery M2tsNielsenId3Behavior

instance Prelude.ToHeader M2tsNielsenId3Behavior

instance Prelude.ToJSON M2tsNielsenId3Behavior where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON M2tsNielsenId3Behavior where
  parseJSON = Prelude.parseJSONText "M2tsNielsenId3Behavior"
