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
-- Module      : Network.AWS.MediaLive.Types.SmoothGroupTimestampOffsetMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.SmoothGroupTimestampOffsetMode
  ( SmoothGroupTimestampOffsetMode
      ( ..,
        SmoothGroupTimestampOffsetModeUSECONFIGUREDOFFSET,
        SmoothGroupTimestampOffsetModeUSEEVENTSTARTDATE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Smooth Group Timestamp Offset Mode
newtype SmoothGroupTimestampOffsetMode = SmoothGroupTimestampOffsetMode'
  { fromSmoothGroupTimestampOffsetMode ::
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

pattern SmoothGroupTimestampOffsetModeUSECONFIGUREDOFFSET :: SmoothGroupTimestampOffsetMode
pattern SmoothGroupTimestampOffsetModeUSECONFIGUREDOFFSET = SmoothGroupTimestampOffsetMode' "USE_CONFIGURED_OFFSET"

pattern SmoothGroupTimestampOffsetModeUSEEVENTSTARTDATE :: SmoothGroupTimestampOffsetMode
pattern SmoothGroupTimestampOffsetModeUSEEVENTSTARTDATE = SmoothGroupTimestampOffsetMode' "USE_EVENT_START_DATE"

{-# COMPLETE
  SmoothGroupTimestampOffsetModeUSECONFIGUREDOFFSET,
  SmoothGroupTimestampOffsetModeUSEEVENTSTARTDATE,
  SmoothGroupTimestampOffsetMode'
  #-}

instance Prelude.FromText SmoothGroupTimestampOffsetMode where
  parser = SmoothGroupTimestampOffsetMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText SmoothGroupTimestampOffsetMode where
  toText (SmoothGroupTimestampOffsetMode' x) = x

instance Prelude.Hashable SmoothGroupTimestampOffsetMode

instance Prelude.NFData SmoothGroupTimestampOffsetMode

instance Prelude.ToByteString SmoothGroupTimestampOffsetMode

instance Prelude.ToQuery SmoothGroupTimestampOffsetMode

instance Prelude.ToHeader SmoothGroupTimestampOffsetMode

instance Prelude.ToJSON SmoothGroupTimestampOffsetMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON SmoothGroupTimestampOffsetMode where
  parseJSON = Prelude.parseJSONText "SmoothGroupTimestampOffsetMode"
