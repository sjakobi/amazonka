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
-- Module      : Network.AWS.MediaConvert.Types.AacRawFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.AacRawFormat
  ( AacRawFormat
      ( ..,
        AacRawFormatLATMLOAS,
        AacRawFormatNONE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Enables LATM\/LOAS AAC output. Note that if you use LATM\/LOAS AAC in an
-- output, you must choose \"No container\" for the output container.
newtype AacRawFormat = AacRawFormat'
  { fromAacRawFormat ::
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

pattern AacRawFormatLATMLOAS :: AacRawFormat
pattern AacRawFormatLATMLOAS = AacRawFormat' "LATM_LOAS"

pattern AacRawFormatNONE :: AacRawFormat
pattern AacRawFormatNONE = AacRawFormat' "NONE"

{-# COMPLETE
  AacRawFormatLATMLOAS,
  AacRawFormatNONE,
  AacRawFormat'
  #-}

instance Prelude.FromText AacRawFormat where
  parser = AacRawFormat' Prelude.<$> Prelude.takeText

instance Prelude.ToText AacRawFormat where
  toText (AacRawFormat' x) = x

instance Prelude.Hashable AacRawFormat

instance Prelude.NFData AacRawFormat

instance Prelude.ToByteString AacRawFormat

instance Prelude.ToQuery AacRawFormat

instance Prelude.ToHeader AacRawFormat

instance Prelude.ToJSON AacRawFormat where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AacRawFormat where
  parseJSON = Prelude.parseJSONText "AacRawFormat"
