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
-- Module      : Network.AWS.Comprehend.Types.PiiEntitiesDetectionMaskMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.PiiEntitiesDetectionMaskMode
  ( PiiEntitiesDetectionMaskMode
      ( ..,
        PiiEntitiesDetectionMaskModeMASK,
        PiiEntitiesDetectionMaskModeREPLACEWITHPIIENTITYTYPE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PiiEntitiesDetectionMaskMode = PiiEntitiesDetectionMaskMode'
  { fromPiiEntitiesDetectionMaskMode ::
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

pattern PiiEntitiesDetectionMaskModeMASK :: PiiEntitiesDetectionMaskMode
pattern PiiEntitiesDetectionMaskModeMASK = PiiEntitiesDetectionMaskMode' "MASK"

pattern PiiEntitiesDetectionMaskModeREPLACEWITHPIIENTITYTYPE :: PiiEntitiesDetectionMaskMode
pattern PiiEntitiesDetectionMaskModeREPLACEWITHPIIENTITYTYPE = PiiEntitiesDetectionMaskMode' "REPLACE_WITH_PII_ENTITY_TYPE"

{-# COMPLETE
  PiiEntitiesDetectionMaskModeMASK,
  PiiEntitiesDetectionMaskModeREPLACEWITHPIIENTITYTYPE,
  PiiEntitiesDetectionMaskMode'
  #-}

instance Prelude.FromText PiiEntitiesDetectionMaskMode where
  parser = PiiEntitiesDetectionMaskMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText PiiEntitiesDetectionMaskMode where
  toText (PiiEntitiesDetectionMaskMode' x) = x

instance Prelude.Hashable PiiEntitiesDetectionMaskMode

instance Prelude.NFData PiiEntitiesDetectionMaskMode

instance Prelude.ToByteString PiiEntitiesDetectionMaskMode

instance Prelude.ToQuery PiiEntitiesDetectionMaskMode

instance Prelude.ToHeader PiiEntitiesDetectionMaskMode

instance Prelude.ToJSON PiiEntitiesDetectionMaskMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON PiiEntitiesDetectionMaskMode where
  parseJSON = Prelude.parseJSONText "PiiEntitiesDetectionMaskMode"
