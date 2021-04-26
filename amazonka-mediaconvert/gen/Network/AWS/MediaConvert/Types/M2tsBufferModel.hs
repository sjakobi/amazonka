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
-- Module      : Network.AWS.MediaConvert.Types.M2tsBufferModel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.M2tsBufferModel
  ( M2tsBufferModel
      ( ..,
        M2tsBufferModelMULTIPLEX,
        M2tsBufferModelNONE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Controls what buffer model to use for accurate interleaving. If set to
-- MULTIPLEX, use multiplex buffer model. If set to NONE, this can lead to
-- lower latency, but low-memory devices may not be able to play back the
-- stream without interruptions.
newtype M2tsBufferModel = M2tsBufferModel'
  { fromM2tsBufferModel ::
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

pattern M2tsBufferModelMULTIPLEX :: M2tsBufferModel
pattern M2tsBufferModelMULTIPLEX = M2tsBufferModel' "MULTIPLEX"

pattern M2tsBufferModelNONE :: M2tsBufferModel
pattern M2tsBufferModelNONE = M2tsBufferModel' "NONE"

{-# COMPLETE
  M2tsBufferModelMULTIPLEX,
  M2tsBufferModelNONE,
  M2tsBufferModel'
  #-}

instance Prelude.FromText M2tsBufferModel where
  parser = M2tsBufferModel' Prelude.<$> Prelude.takeText

instance Prelude.ToText M2tsBufferModel where
  toText (M2tsBufferModel' x) = x

instance Prelude.Hashable M2tsBufferModel

instance Prelude.NFData M2tsBufferModel

instance Prelude.ToByteString M2tsBufferModel

instance Prelude.ToQuery M2tsBufferModel

instance Prelude.ToHeader M2tsBufferModel

instance Prelude.ToJSON M2tsBufferModel where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON M2tsBufferModel where
  parseJSON = Prelude.parseJSONText "M2tsBufferModel"
