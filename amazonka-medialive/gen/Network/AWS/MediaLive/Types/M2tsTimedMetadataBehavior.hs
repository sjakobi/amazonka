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
-- Module      : Network.AWS.MediaLive.Types.M2tsTimedMetadataBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.M2tsTimedMetadataBehavior
  ( M2tsTimedMetadataBehavior
      ( ..,
        M2tsTimedMetadataBehaviorNOPASSTHROUGH,
        M2tsTimedMetadataBehaviorPASSTHROUGH
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | M2ts Timed Metadata Behavior
newtype M2tsTimedMetadataBehavior = M2tsTimedMetadataBehavior'
  { fromM2tsTimedMetadataBehavior ::
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

pattern M2tsTimedMetadataBehaviorNOPASSTHROUGH :: M2tsTimedMetadataBehavior
pattern M2tsTimedMetadataBehaviorNOPASSTHROUGH = M2tsTimedMetadataBehavior' "NO_PASSTHROUGH"

pattern M2tsTimedMetadataBehaviorPASSTHROUGH :: M2tsTimedMetadataBehavior
pattern M2tsTimedMetadataBehaviorPASSTHROUGH = M2tsTimedMetadataBehavior' "PASSTHROUGH"

{-# COMPLETE
  M2tsTimedMetadataBehaviorNOPASSTHROUGH,
  M2tsTimedMetadataBehaviorPASSTHROUGH,
  M2tsTimedMetadataBehavior'
  #-}

instance Prelude.FromText M2tsTimedMetadataBehavior where
  parser = M2tsTimedMetadataBehavior' Prelude.<$> Prelude.takeText

instance Prelude.ToText M2tsTimedMetadataBehavior where
  toText (M2tsTimedMetadataBehavior' x) = x

instance Prelude.Hashable M2tsTimedMetadataBehavior

instance Prelude.NFData M2tsTimedMetadataBehavior

instance Prelude.ToByteString M2tsTimedMetadataBehavior

instance Prelude.ToQuery M2tsTimedMetadataBehavior

instance Prelude.ToHeader M2tsTimedMetadataBehavior

instance Prelude.ToJSON M2tsTimedMetadataBehavior where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON M2tsTimedMetadataBehavior where
  parseJSON = Prelude.parseJSONText "M2tsTimedMetadataBehavior"
