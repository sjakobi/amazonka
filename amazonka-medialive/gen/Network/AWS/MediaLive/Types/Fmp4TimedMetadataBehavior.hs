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
-- Module      : Network.AWS.MediaLive.Types.Fmp4TimedMetadataBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Fmp4TimedMetadataBehavior
  ( Fmp4TimedMetadataBehavior
      ( ..,
        Fmp4TimedMetadataBehaviorNOPASSTHROUGH,
        Fmp4TimedMetadataBehaviorPASSTHROUGH
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Fmp4 Timed Metadata Behavior
newtype Fmp4TimedMetadataBehavior = Fmp4TimedMetadataBehavior'
  { fromFmp4TimedMetadataBehavior ::
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

pattern Fmp4TimedMetadataBehaviorNOPASSTHROUGH :: Fmp4TimedMetadataBehavior
pattern Fmp4TimedMetadataBehaviorNOPASSTHROUGH = Fmp4TimedMetadataBehavior' "NO_PASSTHROUGH"

pattern Fmp4TimedMetadataBehaviorPASSTHROUGH :: Fmp4TimedMetadataBehavior
pattern Fmp4TimedMetadataBehaviorPASSTHROUGH = Fmp4TimedMetadataBehavior' "PASSTHROUGH"

{-# COMPLETE
  Fmp4TimedMetadataBehaviorNOPASSTHROUGH,
  Fmp4TimedMetadataBehaviorPASSTHROUGH,
  Fmp4TimedMetadataBehavior'
  #-}

instance Prelude.FromText Fmp4TimedMetadataBehavior where
  parser = Fmp4TimedMetadataBehavior' Prelude.<$> Prelude.takeText

instance Prelude.ToText Fmp4TimedMetadataBehavior where
  toText (Fmp4TimedMetadataBehavior' x) = x

instance Prelude.Hashable Fmp4TimedMetadataBehavior

instance Prelude.NFData Fmp4TimedMetadataBehavior

instance Prelude.ToByteString Fmp4TimedMetadataBehavior

instance Prelude.ToQuery Fmp4TimedMetadataBehavior

instance Prelude.ToHeader Fmp4TimedMetadataBehavior

instance Prelude.ToJSON Fmp4TimedMetadataBehavior where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Fmp4TimedMetadataBehavior where
  parseJSON = Prelude.parseJSONText "Fmp4TimedMetadataBehavior"
