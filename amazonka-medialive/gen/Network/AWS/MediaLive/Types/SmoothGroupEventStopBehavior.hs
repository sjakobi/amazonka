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
-- Module      : Network.AWS.MediaLive.Types.SmoothGroupEventStopBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.SmoothGroupEventStopBehavior
  ( SmoothGroupEventStopBehavior
      ( ..,
        SmoothGroupEventStopBehaviorNONE,
        SmoothGroupEventStopBehaviorSENDEOS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Smooth Group Event Stop Behavior
newtype SmoothGroupEventStopBehavior = SmoothGroupEventStopBehavior'
  { fromSmoothGroupEventStopBehavior ::
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

pattern SmoothGroupEventStopBehaviorNONE :: SmoothGroupEventStopBehavior
pattern SmoothGroupEventStopBehaviorNONE = SmoothGroupEventStopBehavior' "NONE"

pattern SmoothGroupEventStopBehaviorSENDEOS :: SmoothGroupEventStopBehavior
pattern SmoothGroupEventStopBehaviorSENDEOS = SmoothGroupEventStopBehavior' "SEND_EOS"

{-# COMPLETE
  SmoothGroupEventStopBehaviorNONE,
  SmoothGroupEventStopBehaviorSENDEOS,
  SmoothGroupEventStopBehavior'
  #-}

instance Prelude.FromText SmoothGroupEventStopBehavior where
  parser = SmoothGroupEventStopBehavior' Prelude.<$> Prelude.takeText

instance Prelude.ToText SmoothGroupEventStopBehavior where
  toText (SmoothGroupEventStopBehavior' x) = x

instance Prelude.Hashable SmoothGroupEventStopBehavior

instance Prelude.NFData SmoothGroupEventStopBehavior

instance Prelude.ToByteString SmoothGroupEventStopBehavior

instance Prelude.ToQuery SmoothGroupEventStopBehavior

instance Prelude.ToHeader SmoothGroupEventStopBehavior

instance Prelude.ToJSON SmoothGroupEventStopBehavior where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON SmoothGroupEventStopBehavior where
  parseJSON = Prelude.parseJSONText "SmoothGroupEventStopBehavior"
