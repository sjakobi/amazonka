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
-- Module      : Network.AWS.MediaLive.Types.HlsIncompleteSegmentBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.HlsIncompleteSegmentBehavior
  ( HlsIncompleteSegmentBehavior
      ( ..,
        HlsIncompleteSegmentBehaviorAUTO,
        HlsIncompleteSegmentBehaviorSUPPRESS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Hls Incomplete Segment Behavior
newtype HlsIncompleteSegmentBehavior = HlsIncompleteSegmentBehavior'
  { fromHlsIncompleteSegmentBehavior ::
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

pattern HlsIncompleteSegmentBehaviorAUTO :: HlsIncompleteSegmentBehavior
pattern HlsIncompleteSegmentBehaviorAUTO = HlsIncompleteSegmentBehavior' "AUTO"

pattern HlsIncompleteSegmentBehaviorSUPPRESS :: HlsIncompleteSegmentBehavior
pattern HlsIncompleteSegmentBehaviorSUPPRESS = HlsIncompleteSegmentBehavior' "SUPPRESS"

{-# COMPLETE
  HlsIncompleteSegmentBehaviorAUTO,
  HlsIncompleteSegmentBehaviorSUPPRESS,
  HlsIncompleteSegmentBehavior'
  #-}

instance Prelude.FromText HlsIncompleteSegmentBehavior where
  parser = HlsIncompleteSegmentBehavior' Prelude.<$> Prelude.takeText

instance Prelude.ToText HlsIncompleteSegmentBehavior where
  toText (HlsIncompleteSegmentBehavior' x) = x

instance Prelude.Hashable HlsIncompleteSegmentBehavior

instance Prelude.NFData HlsIncompleteSegmentBehavior

instance Prelude.ToByteString HlsIncompleteSegmentBehavior

instance Prelude.ToQuery HlsIncompleteSegmentBehavior

instance Prelude.ToHeader HlsIncompleteSegmentBehavior

instance Prelude.ToJSON HlsIncompleteSegmentBehavior where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON HlsIncompleteSegmentBehavior where
  parseJSON = Prelude.parseJSONText "HlsIncompleteSegmentBehavior"
