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
-- Module      : Network.AWS.MediaLive.Types.Mpeg2TimecodeInsertionBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Mpeg2TimecodeInsertionBehavior
  ( Mpeg2TimecodeInsertionBehavior
      ( ..,
        Mpeg2TimecodeInsertionBehaviorDISABLED,
        Mpeg2TimecodeInsertionBehaviorGOPTIMECODE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Mpeg2 Timecode Insertion Behavior
newtype Mpeg2TimecodeInsertionBehavior = Mpeg2TimecodeInsertionBehavior'
  { fromMpeg2TimecodeInsertionBehavior ::
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

pattern Mpeg2TimecodeInsertionBehaviorDISABLED :: Mpeg2TimecodeInsertionBehavior
pattern Mpeg2TimecodeInsertionBehaviorDISABLED = Mpeg2TimecodeInsertionBehavior' "DISABLED"

pattern Mpeg2TimecodeInsertionBehaviorGOPTIMECODE :: Mpeg2TimecodeInsertionBehavior
pattern Mpeg2TimecodeInsertionBehaviorGOPTIMECODE = Mpeg2TimecodeInsertionBehavior' "GOP_TIMECODE"

{-# COMPLETE
  Mpeg2TimecodeInsertionBehaviorDISABLED,
  Mpeg2TimecodeInsertionBehaviorGOPTIMECODE,
  Mpeg2TimecodeInsertionBehavior'
  #-}

instance Prelude.FromText Mpeg2TimecodeInsertionBehavior where
  parser = Mpeg2TimecodeInsertionBehavior' Prelude.<$> Prelude.takeText

instance Prelude.ToText Mpeg2TimecodeInsertionBehavior where
  toText (Mpeg2TimecodeInsertionBehavior' x) = x

instance Prelude.Hashable Mpeg2TimecodeInsertionBehavior

instance Prelude.NFData Mpeg2TimecodeInsertionBehavior

instance Prelude.ToByteString Mpeg2TimecodeInsertionBehavior

instance Prelude.ToQuery Mpeg2TimecodeInsertionBehavior

instance Prelude.ToHeader Mpeg2TimecodeInsertionBehavior

instance Prelude.ToJSON Mpeg2TimecodeInsertionBehavior where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Mpeg2TimecodeInsertionBehavior where
  parseJSON = Prelude.parseJSONText "Mpeg2TimecodeInsertionBehavior"
