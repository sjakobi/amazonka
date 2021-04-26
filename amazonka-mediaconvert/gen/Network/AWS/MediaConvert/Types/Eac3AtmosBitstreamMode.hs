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
-- Module      : Network.AWS.MediaConvert.Types.Eac3AtmosBitstreamMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Eac3AtmosBitstreamMode
  ( Eac3AtmosBitstreamMode
      ( ..,
        Eac3AtmosBitstreamModeCOMPLETEMAIN
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specify the bitstream mode for the E-AC-3 stream that the encoder emits.
-- For more information about the EAC3 bitstream mode, see ATSC A\/52-2012
-- (Annex E).
newtype Eac3AtmosBitstreamMode = Eac3AtmosBitstreamMode'
  { fromEac3AtmosBitstreamMode ::
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

pattern Eac3AtmosBitstreamModeCOMPLETEMAIN :: Eac3AtmosBitstreamMode
pattern Eac3AtmosBitstreamModeCOMPLETEMAIN = Eac3AtmosBitstreamMode' "COMPLETE_MAIN"

{-# COMPLETE
  Eac3AtmosBitstreamModeCOMPLETEMAIN,
  Eac3AtmosBitstreamMode'
  #-}

instance Prelude.FromText Eac3AtmosBitstreamMode where
  parser = Eac3AtmosBitstreamMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText Eac3AtmosBitstreamMode where
  toText (Eac3AtmosBitstreamMode' x) = x

instance Prelude.Hashable Eac3AtmosBitstreamMode

instance Prelude.NFData Eac3AtmosBitstreamMode

instance Prelude.ToByteString Eac3AtmosBitstreamMode

instance Prelude.ToQuery Eac3AtmosBitstreamMode

instance Prelude.ToHeader Eac3AtmosBitstreamMode

instance Prelude.ToJSON Eac3AtmosBitstreamMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Eac3AtmosBitstreamMode where
  parseJSON = Prelude.parseJSONText "Eac3AtmosBitstreamMode"
