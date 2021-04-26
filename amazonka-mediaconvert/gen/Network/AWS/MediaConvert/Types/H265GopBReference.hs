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
-- Module      : Network.AWS.MediaConvert.Types.H265GopBReference
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H265GopBReference
  ( H265GopBReference
      ( ..,
        H265GopBReferenceDISABLED,
        H265GopBReferenceENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | If enable, use reference B frames for GOP structures that have B frames
-- > 1.
newtype H265GopBReference = H265GopBReference'
  { fromH265GopBReference ::
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

pattern H265GopBReferenceDISABLED :: H265GopBReference
pattern H265GopBReferenceDISABLED = H265GopBReference' "DISABLED"

pattern H265GopBReferenceENABLED :: H265GopBReference
pattern H265GopBReferenceENABLED = H265GopBReference' "ENABLED"

{-# COMPLETE
  H265GopBReferenceDISABLED,
  H265GopBReferenceENABLED,
  H265GopBReference'
  #-}

instance Prelude.FromText H265GopBReference where
  parser = H265GopBReference' Prelude.<$> Prelude.takeText

instance Prelude.ToText H265GopBReference where
  toText (H265GopBReference' x) = x

instance Prelude.Hashable H265GopBReference

instance Prelude.NFData H265GopBReference

instance Prelude.ToByteString H265GopBReference

instance Prelude.ToQuery H265GopBReference

instance Prelude.ToHeader H265GopBReference

instance Prelude.ToJSON H265GopBReference where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H265GopBReference where
  parseJSON = Prelude.parseJSONText "H265GopBReference"
