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
-- Module      : Network.AWS.MediaConvert.Types.H264GopBReference
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H264GopBReference
  ( H264GopBReference
      ( ..,
        H264GopBReferenceDISABLED,
        H264GopBReferenceENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | If enable, use reference B frames for GOP structures that have B frames
-- > 1.
newtype H264GopBReference = H264GopBReference'
  { fromH264GopBReference ::
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

pattern H264GopBReferenceDISABLED :: H264GopBReference
pattern H264GopBReferenceDISABLED = H264GopBReference' "DISABLED"

pattern H264GopBReferenceENABLED :: H264GopBReference
pattern H264GopBReferenceENABLED = H264GopBReference' "ENABLED"

{-# COMPLETE
  H264GopBReferenceDISABLED,
  H264GopBReferenceENABLED,
  H264GopBReference'
  #-}

instance Prelude.FromText H264GopBReference where
  parser = H264GopBReference' Prelude.<$> Prelude.takeText

instance Prelude.ToText H264GopBReference where
  toText (H264GopBReference' x) = x

instance Prelude.Hashable H264GopBReference

instance Prelude.NFData H264GopBReference

instance Prelude.ToByteString H264GopBReference

instance Prelude.ToQuery H264GopBReference

instance Prelude.ToHeader H264GopBReference

instance Prelude.ToJSON H264GopBReference where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H264GopBReference where
  parseJSON = Prelude.parseJSONText "H264GopBReference"
