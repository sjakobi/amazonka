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
-- Module      : Network.AWS.Comprehend.Types.PiiEntitiesDetectionMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.PiiEntitiesDetectionMode
  ( PiiEntitiesDetectionMode
      ( ..,
        PiiEntitiesDetectionModeONLYOFFSETS,
        PiiEntitiesDetectionModeONLYREDACTION
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PiiEntitiesDetectionMode = PiiEntitiesDetectionMode'
  { fromPiiEntitiesDetectionMode ::
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

pattern PiiEntitiesDetectionModeONLYOFFSETS :: PiiEntitiesDetectionMode
pattern PiiEntitiesDetectionModeONLYOFFSETS = PiiEntitiesDetectionMode' "ONLY_OFFSETS"

pattern PiiEntitiesDetectionModeONLYREDACTION :: PiiEntitiesDetectionMode
pattern PiiEntitiesDetectionModeONLYREDACTION = PiiEntitiesDetectionMode' "ONLY_REDACTION"

{-# COMPLETE
  PiiEntitiesDetectionModeONLYOFFSETS,
  PiiEntitiesDetectionModeONLYREDACTION,
  PiiEntitiesDetectionMode'
  #-}

instance Prelude.FromText PiiEntitiesDetectionMode where
  parser = PiiEntitiesDetectionMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText PiiEntitiesDetectionMode where
  toText (PiiEntitiesDetectionMode' x) = x

instance Prelude.Hashable PiiEntitiesDetectionMode

instance Prelude.NFData PiiEntitiesDetectionMode

instance Prelude.ToByteString PiiEntitiesDetectionMode

instance Prelude.ToQuery PiiEntitiesDetectionMode

instance Prelude.ToHeader PiiEntitiesDetectionMode

instance Prelude.ToJSON PiiEntitiesDetectionMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON PiiEntitiesDetectionMode where
  parseJSON = Prelude.parseJSONText "PiiEntitiesDetectionMode"
