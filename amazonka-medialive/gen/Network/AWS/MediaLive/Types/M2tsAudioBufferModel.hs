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
-- Module      : Network.AWS.MediaLive.Types.M2tsAudioBufferModel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.M2tsAudioBufferModel
  ( M2tsAudioBufferModel
      ( ..,
        M2tsAudioBufferModelATSC,
        M2tsAudioBufferModelDVB
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | M2ts Audio Buffer Model
newtype M2tsAudioBufferModel = M2tsAudioBufferModel'
  { fromM2tsAudioBufferModel ::
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

pattern M2tsAudioBufferModelATSC :: M2tsAudioBufferModel
pattern M2tsAudioBufferModelATSC = M2tsAudioBufferModel' "ATSC"

pattern M2tsAudioBufferModelDVB :: M2tsAudioBufferModel
pattern M2tsAudioBufferModelDVB = M2tsAudioBufferModel' "DVB"

{-# COMPLETE
  M2tsAudioBufferModelATSC,
  M2tsAudioBufferModelDVB,
  M2tsAudioBufferModel'
  #-}

instance Prelude.FromText M2tsAudioBufferModel where
  parser = M2tsAudioBufferModel' Prelude.<$> Prelude.takeText

instance Prelude.ToText M2tsAudioBufferModel where
  toText (M2tsAudioBufferModel' x) = x

instance Prelude.Hashable M2tsAudioBufferModel

instance Prelude.NFData M2tsAudioBufferModel

instance Prelude.ToByteString M2tsAudioBufferModel

instance Prelude.ToQuery M2tsAudioBufferModel

instance Prelude.ToHeader M2tsAudioBufferModel

instance Prelude.ToJSON M2tsAudioBufferModel where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON M2tsAudioBufferModel where
  parseJSON = Prelude.parseJSONText "M2tsAudioBufferModel"
