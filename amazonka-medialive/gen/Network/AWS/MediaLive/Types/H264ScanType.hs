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
-- Module      : Network.AWS.MediaLive.Types.H264ScanType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H264ScanType
  ( H264ScanType
      ( ..,
        H264ScanTypeINTERLACED,
        H264ScanTypePROGRESSIVE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | H264 Scan Type
newtype H264ScanType = H264ScanType'
  { fromH264ScanType ::
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

pattern H264ScanTypeINTERLACED :: H264ScanType
pattern H264ScanTypeINTERLACED = H264ScanType' "INTERLACED"

pattern H264ScanTypePROGRESSIVE :: H264ScanType
pattern H264ScanTypePROGRESSIVE = H264ScanType' "PROGRESSIVE"

{-# COMPLETE
  H264ScanTypeINTERLACED,
  H264ScanTypePROGRESSIVE,
  H264ScanType'
  #-}

instance Prelude.FromText H264ScanType where
  parser = H264ScanType' Prelude.<$> Prelude.takeText

instance Prelude.ToText H264ScanType where
  toText (H264ScanType' x) = x

instance Prelude.Hashable H264ScanType

instance Prelude.NFData H264ScanType

instance Prelude.ToByteString H264ScanType

instance Prelude.ToQuery H264ScanType

instance Prelude.ToHeader H264ScanType

instance Prelude.ToJSON H264ScanType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H264ScanType where
  parseJSON = Prelude.parseJSONText "H264ScanType"
