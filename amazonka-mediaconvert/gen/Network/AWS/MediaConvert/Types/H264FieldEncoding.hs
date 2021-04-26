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
-- Module      : Network.AWS.MediaConvert.Types.H264FieldEncoding
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H264FieldEncoding
  ( H264FieldEncoding
      ( ..,
        H264FieldEncodingFORCEFIELD,
        H264FieldEncodingPAFF
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Keep the default value, PAFF, to have MediaConvert use PAFF encoding for
-- interlaced outputs. Choose Force field (FORCE_FIELD) to disable PAFF
-- encoding and create separate interlaced fields.
newtype H264FieldEncoding = H264FieldEncoding'
  { fromH264FieldEncoding ::
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

pattern H264FieldEncodingFORCEFIELD :: H264FieldEncoding
pattern H264FieldEncodingFORCEFIELD = H264FieldEncoding' "FORCE_FIELD"

pattern H264FieldEncodingPAFF :: H264FieldEncoding
pattern H264FieldEncodingPAFF = H264FieldEncoding' "PAFF"

{-# COMPLETE
  H264FieldEncodingFORCEFIELD,
  H264FieldEncodingPAFF,
  H264FieldEncoding'
  #-}

instance Prelude.FromText H264FieldEncoding where
  parser = H264FieldEncoding' Prelude.<$> Prelude.takeText

instance Prelude.ToText H264FieldEncoding where
  toText (H264FieldEncoding' x) = x

instance Prelude.Hashable H264FieldEncoding

instance Prelude.NFData H264FieldEncoding

instance Prelude.ToByteString H264FieldEncoding

instance Prelude.ToQuery H264FieldEncoding

instance Prelude.ToHeader H264FieldEncoding

instance Prelude.ToJSON H264FieldEncoding where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H264FieldEncoding where
  parseJSON = Prelude.parseJSONText "H264FieldEncoding"
