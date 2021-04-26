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
-- Module      : Network.AWS.MediaLive.Types.Ac3MetadataControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Ac3MetadataControl
  ( Ac3MetadataControl
      ( ..,
        Ac3MetadataControlFOLLOWINPUT,
        Ac3MetadataControlUSECONFIGURED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Ac3 Metadata Control
newtype Ac3MetadataControl = Ac3MetadataControl'
  { fromAc3MetadataControl ::
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

pattern Ac3MetadataControlFOLLOWINPUT :: Ac3MetadataControl
pattern Ac3MetadataControlFOLLOWINPUT = Ac3MetadataControl' "FOLLOW_INPUT"

pattern Ac3MetadataControlUSECONFIGURED :: Ac3MetadataControl
pattern Ac3MetadataControlUSECONFIGURED = Ac3MetadataControl' "USE_CONFIGURED"

{-# COMPLETE
  Ac3MetadataControlFOLLOWINPUT,
  Ac3MetadataControlUSECONFIGURED,
  Ac3MetadataControl'
  #-}

instance Prelude.FromText Ac3MetadataControl where
  parser = Ac3MetadataControl' Prelude.<$> Prelude.takeText

instance Prelude.ToText Ac3MetadataControl where
  toText (Ac3MetadataControl' x) = x

instance Prelude.Hashable Ac3MetadataControl

instance Prelude.NFData Ac3MetadataControl

instance Prelude.ToByteString Ac3MetadataControl

instance Prelude.ToQuery Ac3MetadataControl

instance Prelude.ToHeader Ac3MetadataControl

instance Prelude.ToJSON Ac3MetadataControl where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Ac3MetadataControl where
  parseJSON = Prelude.parseJSONText "Ac3MetadataControl"
