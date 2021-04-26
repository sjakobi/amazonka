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
-- Module      : Network.AWS.MediaLive.Types.HlsWebdavHttpTransferMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.HlsWebdavHttpTransferMode
  ( HlsWebdavHttpTransferMode
      ( ..,
        HlsWebdavHttpTransferModeWebdavCHUNKED,
        HlsWebdavHttpTransferModeWebdavNONCHUNKED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Hls Webdav Http Transfer Mode
newtype HlsWebdavHttpTransferMode = HlsWebdavHttpTransferMode'
  { fromHlsWebdavHttpTransferMode ::
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

pattern HlsWebdavHttpTransferModeWebdavCHUNKED :: HlsWebdavHttpTransferMode
pattern HlsWebdavHttpTransferModeWebdavCHUNKED = HlsWebdavHttpTransferMode' "CHUNKED"

pattern HlsWebdavHttpTransferModeWebdavNONCHUNKED :: HlsWebdavHttpTransferMode
pattern HlsWebdavHttpTransferModeWebdavNONCHUNKED = HlsWebdavHttpTransferMode' "NON_CHUNKED"

{-# COMPLETE
  HlsWebdavHttpTransferModeWebdavCHUNKED,
  HlsWebdavHttpTransferModeWebdavNONCHUNKED,
  HlsWebdavHttpTransferMode'
  #-}

instance Prelude.FromText HlsWebdavHttpTransferMode where
  parser = HlsWebdavHttpTransferMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText HlsWebdavHttpTransferMode where
  toText (HlsWebdavHttpTransferMode' x) = x

instance Prelude.Hashable HlsWebdavHttpTransferMode

instance Prelude.NFData HlsWebdavHttpTransferMode

instance Prelude.ToByteString HlsWebdavHttpTransferMode

instance Prelude.ToQuery HlsWebdavHttpTransferMode

instance Prelude.ToHeader HlsWebdavHttpTransferMode

instance Prelude.ToJSON HlsWebdavHttpTransferMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON HlsWebdavHttpTransferMode where
  parseJSON = Prelude.parseJSONText "HlsWebdavHttpTransferMode"
