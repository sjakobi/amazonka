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
-- Module      : Network.AWS.MediaLive.Types.Eac3MetadataControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Eac3MetadataControl
  ( Eac3MetadataControl
      ( ..,
        Eac3MetadataControlFOLLOWINPUT,
        Eac3MetadataControlUSECONFIGURED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Eac3 Metadata Control
newtype Eac3MetadataControl = Eac3MetadataControl'
  { fromEac3MetadataControl ::
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

pattern Eac3MetadataControlFOLLOWINPUT :: Eac3MetadataControl
pattern Eac3MetadataControlFOLLOWINPUT = Eac3MetadataControl' "FOLLOW_INPUT"

pattern Eac3MetadataControlUSECONFIGURED :: Eac3MetadataControl
pattern Eac3MetadataControlUSECONFIGURED = Eac3MetadataControl' "USE_CONFIGURED"

{-# COMPLETE
  Eac3MetadataControlFOLLOWINPUT,
  Eac3MetadataControlUSECONFIGURED,
  Eac3MetadataControl'
  #-}

instance Prelude.FromText Eac3MetadataControl where
  parser = Eac3MetadataControl' Prelude.<$> Prelude.takeText

instance Prelude.ToText Eac3MetadataControl where
  toText (Eac3MetadataControl' x) = x

instance Prelude.Hashable Eac3MetadataControl

instance Prelude.NFData Eac3MetadataControl

instance Prelude.ToByteString Eac3MetadataControl

instance Prelude.ToQuery Eac3MetadataControl

instance Prelude.ToHeader Eac3MetadataControl

instance Prelude.ToJSON Eac3MetadataControl where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Eac3MetadataControl where
  parseJSON = Prelude.parseJSONText "Eac3MetadataControl"
