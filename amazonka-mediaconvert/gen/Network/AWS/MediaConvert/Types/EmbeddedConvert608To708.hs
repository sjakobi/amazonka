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
-- Module      : Network.AWS.MediaConvert.Types.EmbeddedConvert608To708
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.EmbeddedConvert608To708
  ( EmbeddedConvert608To708
      ( ..,
        EmbeddedConvert608To708DISABLED,
        EmbeddedConvert608To708UPCONVERT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specify whether this set of input captions appears in your outputs in
-- both 608 and 708 format. If you choose Upconvert (UPCONVERT),
-- MediaConvert includes the captions data in two ways: it passes the 608
-- data through using the 608 compatibility bytes fields of the 708
-- wrapper, and it also translates the 608 data into 708.
newtype EmbeddedConvert608To708 = EmbeddedConvert608To708'
  { fromEmbeddedConvert608To708 ::
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

pattern EmbeddedConvert608To708DISABLED :: EmbeddedConvert608To708
pattern EmbeddedConvert608To708DISABLED = EmbeddedConvert608To708' "DISABLED"

pattern EmbeddedConvert608To708UPCONVERT :: EmbeddedConvert608To708
pattern EmbeddedConvert608To708UPCONVERT = EmbeddedConvert608To708' "UPCONVERT"

{-# COMPLETE
  EmbeddedConvert608To708DISABLED,
  EmbeddedConvert608To708UPCONVERT,
  EmbeddedConvert608To708'
  #-}

instance Prelude.FromText EmbeddedConvert608To708 where
  parser = EmbeddedConvert608To708' Prelude.<$> Prelude.takeText

instance Prelude.ToText EmbeddedConvert608To708 where
  toText (EmbeddedConvert608To708' x) = x

instance Prelude.Hashable EmbeddedConvert608To708

instance Prelude.NFData EmbeddedConvert608To708

instance Prelude.ToByteString EmbeddedConvert608To708

instance Prelude.ToQuery EmbeddedConvert608To708

instance Prelude.ToHeader EmbeddedConvert608To708

instance Prelude.ToJSON EmbeddedConvert608To708 where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON EmbeddedConvert608To708 where
  parseJSON = Prelude.parseJSONText "EmbeddedConvert608To708"
