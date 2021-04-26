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
-- Module      : Network.AWS.MediaConvert.Types.FileSourceConvert608To708
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.FileSourceConvert608To708
  ( FileSourceConvert608To708
      ( ..,
        FileSourceConvert608To708DISABLED,
        FileSourceConvert608To708UPCONVERT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specify whether this set of input captions appears in your outputs in
-- both 608 and 708 format. If you choose Upconvert (UPCONVERT),
-- MediaConvert includes the captions data in two ways: it passes the 608
-- data through using the 608 compatibility bytes fields of the 708
-- wrapper, and it also translates the 608 data into 708.
newtype FileSourceConvert608To708 = FileSourceConvert608To708'
  { fromFileSourceConvert608To708 ::
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

pattern FileSourceConvert608To708DISABLED :: FileSourceConvert608To708
pattern FileSourceConvert608To708DISABLED = FileSourceConvert608To708' "DISABLED"

pattern FileSourceConvert608To708UPCONVERT :: FileSourceConvert608To708
pattern FileSourceConvert608To708UPCONVERT = FileSourceConvert608To708' "UPCONVERT"

{-# COMPLETE
  FileSourceConvert608To708DISABLED,
  FileSourceConvert608To708UPCONVERT,
  FileSourceConvert608To708'
  #-}

instance Prelude.FromText FileSourceConvert608To708 where
  parser = FileSourceConvert608To708' Prelude.<$> Prelude.takeText

instance Prelude.ToText FileSourceConvert608To708 where
  toText (FileSourceConvert608To708' x) = x

instance Prelude.Hashable FileSourceConvert608To708

instance Prelude.NFData FileSourceConvert608To708

instance Prelude.ToByteString FileSourceConvert608To708

instance Prelude.ToQuery FileSourceConvert608To708

instance Prelude.ToHeader FileSourceConvert608To708

instance Prelude.ToJSON FileSourceConvert608To708 where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON FileSourceConvert608To708 where
  parseJSON = Prelude.parseJSONText "FileSourceConvert608To708"
