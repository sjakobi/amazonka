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
-- Module      : Network.AWS.MediaLive.Types.EmbeddedScte20Detection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.EmbeddedScte20Detection
  ( EmbeddedScte20Detection
      ( ..,
        EmbeddedScte20DetectionAUTO,
        EmbeddedScte20DetectionOFF
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Embedded Scte20 Detection
newtype EmbeddedScte20Detection = EmbeddedScte20Detection'
  { fromEmbeddedScte20Detection ::
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

pattern EmbeddedScte20DetectionAUTO :: EmbeddedScte20Detection
pattern EmbeddedScte20DetectionAUTO = EmbeddedScte20Detection' "AUTO"

pattern EmbeddedScte20DetectionOFF :: EmbeddedScte20Detection
pattern EmbeddedScte20DetectionOFF = EmbeddedScte20Detection' "OFF"

{-# COMPLETE
  EmbeddedScte20DetectionAUTO,
  EmbeddedScte20DetectionOFF,
  EmbeddedScte20Detection'
  #-}

instance Prelude.FromText EmbeddedScte20Detection where
  parser = EmbeddedScte20Detection' Prelude.<$> Prelude.takeText

instance Prelude.ToText EmbeddedScte20Detection where
  toText (EmbeddedScte20Detection' x) = x

instance Prelude.Hashable EmbeddedScte20Detection

instance Prelude.NFData EmbeddedScte20Detection

instance Prelude.ToByteString EmbeddedScte20Detection

instance Prelude.ToQuery EmbeddedScte20Detection

instance Prelude.ToHeader EmbeddedScte20Detection

instance Prelude.ToJSON EmbeddedScte20Detection where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON EmbeddedScte20Detection where
  parseJSON = Prelude.parseJSONText "EmbeddedScte20Detection"
