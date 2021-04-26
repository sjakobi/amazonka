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
-- Module      : Network.AWS.MediaLive.Types.M3u8TimedMetadataBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.M3u8TimedMetadataBehavior
  ( M3u8TimedMetadataBehavior
      ( ..,
        M3u8TimedMetadataBehaviorNOPASSTHROUGH,
        M3u8TimedMetadataBehaviorPASSTHROUGH
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | M3u8 Timed Metadata Behavior
newtype M3u8TimedMetadataBehavior = M3u8TimedMetadataBehavior'
  { fromM3u8TimedMetadataBehavior ::
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

pattern M3u8TimedMetadataBehaviorNOPASSTHROUGH :: M3u8TimedMetadataBehavior
pattern M3u8TimedMetadataBehaviorNOPASSTHROUGH = M3u8TimedMetadataBehavior' "NO_PASSTHROUGH"

pattern M3u8TimedMetadataBehaviorPASSTHROUGH :: M3u8TimedMetadataBehavior
pattern M3u8TimedMetadataBehaviorPASSTHROUGH = M3u8TimedMetadataBehavior' "PASSTHROUGH"

{-# COMPLETE
  M3u8TimedMetadataBehaviorNOPASSTHROUGH,
  M3u8TimedMetadataBehaviorPASSTHROUGH,
  M3u8TimedMetadataBehavior'
  #-}

instance Prelude.FromText M3u8TimedMetadataBehavior where
  parser = M3u8TimedMetadataBehavior' Prelude.<$> Prelude.takeText

instance Prelude.ToText M3u8TimedMetadataBehavior where
  toText (M3u8TimedMetadataBehavior' x) = x

instance Prelude.Hashable M3u8TimedMetadataBehavior

instance Prelude.NFData M3u8TimedMetadataBehavior

instance Prelude.ToByteString M3u8TimedMetadataBehavior

instance Prelude.ToQuery M3u8TimedMetadataBehavior

instance Prelude.ToHeader M3u8TimedMetadataBehavior

instance Prelude.ToJSON M3u8TimedMetadataBehavior where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON M3u8TimedMetadataBehavior where
  parseJSON = Prelude.parseJSONText "M3u8TimedMetadataBehavior"
