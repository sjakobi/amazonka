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
-- Module      : Network.AWS.MediaLive.Types.HlsAkamaiHttpTransferMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.HlsAkamaiHttpTransferMode
  ( HlsAkamaiHttpTransferMode
      ( ..,
        HlsAkamaiHttpTransferModeCHUNKED,
        HlsAkamaiHttpTransferModeNONCHUNKED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Hls Akamai Http Transfer Mode
newtype HlsAkamaiHttpTransferMode = HlsAkamaiHttpTransferMode'
  { fromHlsAkamaiHttpTransferMode ::
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

pattern HlsAkamaiHttpTransferModeCHUNKED :: HlsAkamaiHttpTransferMode
pattern HlsAkamaiHttpTransferModeCHUNKED = HlsAkamaiHttpTransferMode' "CHUNKED"

pattern HlsAkamaiHttpTransferModeNONCHUNKED :: HlsAkamaiHttpTransferMode
pattern HlsAkamaiHttpTransferModeNONCHUNKED = HlsAkamaiHttpTransferMode' "NON_CHUNKED"

{-# COMPLETE
  HlsAkamaiHttpTransferModeCHUNKED,
  HlsAkamaiHttpTransferModeNONCHUNKED,
  HlsAkamaiHttpTransferMode'
  #-}

instance Prelude.FromText HlsAkamaiHttpTransferMode where
  parser = HlsAkamaiHttpTransferMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText HlsAkamaiHttpTransferMode where
  toText (HlsAkamaiHttpTransferMode' x) = x

instance Prelude.Hashable HlsAkamaiHttpTransferMode

instance Prelude.NFData HlsAkamaiHttpTransferMode

instance Prelude.ToByteString HlsAkamaiHttpTransferMode

instance Prelude.ToQuery HlsAkamaiHttpTransferMode

instance Prelude.ToHeader HlsAkamaiHttpTransferMode

instance Prelude.ToJSON HlsAkamaiHttpTransferMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON HlsAkamaiHttpTransferMode where
  parseJSON = Prelude.parseJSONText "HlsAkamaiHttpTransferMode"
