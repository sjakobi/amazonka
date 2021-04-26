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
-- Module      : Network.AWS.MediaLive.Types.Mpeg2ScanType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Mpeg2ScanType
  ( Mpeg2ScanType
      ( ..,
        Mpeg2ScanTypeINTERLACED,
        Mpeg2ScanTypePROGRESSIVE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Mpeg2 Scan Type
newtype Mpeg2ScanType = Mpeg2ScanType'
  { fromMpeg2ScanType ::
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

pattern Mpeg2ScanTypeINTERLACED :: Mpeg2ScanType
pattern Mpeg2ScanTypeINTERLACED = Mpeg2ScanType' "INTERLACED"

pattern Mpeg2ScanTypePROGRESSIVE :: Mpeg2ScanType
pattern Mpeg2ScanTypePROGRESSIVE = Mpeg2ScanType' "PROGRESSIVE"

{-# COMPLETE
  Mpeg2ScanTypeINTERLACED,
  Mpeg2ScanTypePROGRESSIVE,
  Mpeg2ScanType'
  #-}

instance Prelude.FromText Mpeg2ScanType where
  parser = Mpeg2ScanType' Prelude.<$> Prelude.takeText

instance Prelude.ToText Mpeg2ScanType where
  toText (Mpeg2ScanType' x) = x

instance Prelude.Hashable Mpeg2ScanType

instance Prelude.NFData Mpeg2ScanType

instance Prelude.ToByteString Mpeg2ScanType

instance Prelude.ToQuery Mpeg2ScanType

instance Prelude.ToHeader Mpeg2ScanType

instance Prelude.ToJSON Mpeg2ScanType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Mpeg2ScanType where
  parseJSON = Prelude.parseJSONText "Mpeg2ScanType"
