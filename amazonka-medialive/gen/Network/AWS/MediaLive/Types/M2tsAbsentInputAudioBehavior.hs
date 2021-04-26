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
-- Module      : Network.AWS.MediaLive.Types.M2tsAbsentInputAudioBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.M2tsAbsentInputAudioBehavior
  ( M2tsAbsentInputAudioBehavior
      ( ..,
        M2tsAbsentInputAudioBehaviorDROP,
        M2tsAbsentInputAudioBehaviorENCODESILENCE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | M2ts Absent Input Audio Behavior
newtype M2tsAbsentInputAudioBehavior = M2tsAbsentInputAudioBehavior'
  { fromM2tsAbsentInputAudioBehavior ::
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

pattern M2tsAbsentInputAudioBehaviorDROP :: M2tsAbsentInputAudioBehavior
pattern M2tsAbsentInputAudioBehaviorDROP = M2tsAbsentInputAudioBehavior' "DROP"

pattern M2tsAbsentInputAudioBehaviorENCODESILENCE :: M2tsAbsentInputAudioBehavior
pattern M2tsAbsentInputAudioBehaviorENCODESILENCE = M2tsAbsentInputAudioBehavior' "ENCODE_SILENCE"

{-# COMPLETE
  M2tsAbsentInputAudioBehaviorDROP,
  M2tsAbsentInputAudioBehaviorENCODESILENCE,
  M2tsAbsentInputAudioBehavior'
  #-}

instance Prelude.FromText M2tsAbsentInputAudioBehavior where
  parser = M2tsAbsentInputAudioBehavior' Prelude.<$> Prelude.takeText

instance Prelude.ToText M2tsAbsentInputAudioBehavior where
  toText (M2tsAbsentInputAudioBehavior' x) = x

instance Prelude.Hashable M2tsAbsentInputAudioBehavior

instance Prelude.NFData M2tsAbsentInputAudioBehavior

instance Prelude.ToByteString M2tsAbsentInputAudioBehavior

instance Prelude.ToQuery M2tsAbsentInputAudioBehavior

instance Prelude.ToHeader M2tsAbsentInputAudioBehavior

instance Prelude.ToJSON M2tsAbsentInputAudioBehavior where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON M2tsAbsentInputAudioBehavior where
  parseJSON = Prelude.parseJSONText "M2tsAbsentInputAudioBehavior"
