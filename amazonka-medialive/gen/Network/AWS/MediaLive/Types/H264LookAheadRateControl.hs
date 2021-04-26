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
-- Module      : Network.AWS.MediaLive.Types.H264LookAheadRateControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H264LookAheadRateControl
  ( H264LookAheadRateControl
      ( ..,
        H264LookAheadRateControlHIGH,
        H264LookAheadRateControlLOW,
        H264LookAheadRateControlMEDIUM
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | H264 Look Ahead Rate Control
newtype H264LookAheadRateControl = H264LookAheadRateControl'
  { fromH264LookAheadRateControl ::
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

pattern H264LookAheadRateControlHIGH :: H264LookAheadRateControl
pattern H264LookAheadRateControlHIGH = H264LookAheadRateControl' "HIGH"

pattern H264LookAheadRateControlLOW :: H264LookAheadRateControl
pattern H264LookAheadRateControlLOW = H264LookAheadRateControl' "LOW"

pattern H264LookAheadRateControlMEDIUM :: H264LookAheadRateControl
pattern H264LookAheadRateControlMEDIUM = H264LookAheadRateControl' "MEDIUM"

{-# COMPLETE
  H264LookAheadRateControlHIGH,
  H264LookAheadRateControlLOW,
  H264LookAheadRateControlMEDIUM,
  H264LookAheadRateControl'
  #-}

instance Prelude.FromText H264LookAheadRateControl where
  parser = H264LookAheadRateControl' Prelude.<$> Prelude.takeText

instance Prelude.ToText H264LookAheadRateControl where
  toText (H264LookAheadRateControl' x) = x

instance Prelude.Hashable H264LookAheadRateControl

instance Prelude.NFData H264LookAheadRateControl

instance Prelude.ToByteString H264LookAheadRateControl

instance Prelude.ToQuery H264LookAheadRateControl

instance Prelude.ToHeader H264LookAheadRateControl

instance Prelude.ToJSON H264LookAheadRateControl where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H264LookAheadRateControl where
  parseJSON = Prelude.parseJSONText "H264LookAheadRateControl"
