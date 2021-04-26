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
-- Module      : Network.AWS.MediaLive.Types.H265ScanType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H265ScanType
  ( H265ScanType
      ( ..,
        H265ScanTypeINTERLACED,
        H265ScanTypePROGRESSIVE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | H265 Scan Type
newtype H265ScanType = H265ScanType'
  { fromH265ScanType ::
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

pattern H265ScanTypeINTERLACED :: H265ScanType
pattern H265ScanTypeINTERLACED = H265ScanType' "INTERLACED"

pattern H265ScanTypePROGRESSIVE :: H265ScanType
pattern H265ScanTypePROGRESSIVE = H265ScanType' "PROGRESSIVE"

{-# COMPLETE
  H265ScanTypeINTERLACED,
  H265ScanTypePROGRESSIVE,
  H265ScanType'
  #-}

instance Prelude.FromText H265ScanType where
  parser = H265ScanType' Prelude.<$> Prelude.takeText

instance Prelude.ToText H265ScanType where
  toText (H265ScanType' x) = x

instance Prelude.Hashable H265ScanType

instance Prelude.NFData H265ScanType

instance Prelude.ToByteString H265ScanType

instance Prelude.ToQuery H265ScanType

instance Prelude.ToHeader H265ScanType

instance Prelude.ToJSON H265ScanType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H265ScanType where
  parseJSON = Prelude.parseJSONText "H265ScanType"
