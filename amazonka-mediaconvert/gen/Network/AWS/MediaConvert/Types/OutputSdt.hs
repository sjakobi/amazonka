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
-- Module      : Network.AWS.MediaConvert.Types.OutputSdt
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.OutputSdt
  ( OutputSdt
      ( ..,
        OutputSdtSDTFOLLOW,
        OutputSdtSDTFOLLOWIFPRESENT,
        OutputSdtSDTMANUAL,
        OutputSdtSDTNONE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Selects method of inserting SDT information into output stream. \"Follow
-- input SDT\" copies SDT information from input stream to output stream.
-- \"Follow input SDT if present\" copies SDT information from input stream
-- to output stream if SDT information is present in the input, otherwise
-- it will fall back on the user-defined values. Enter \"SDT Manually\"
-- means user will enter the SDT information. \"No SDT\" means output
-- stream will not contain SDT information.
newtype OutputSdt = OutputSdt'
  { fromOutputSdt ::
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

pattern OutputSdtSDTFOLLOW :: OutputSdt
pattern OutputSdtSDTFOLLOW = OutputSdt' "SDT_FOLLOW"

pattern OutputSdtSDTFOLLOWIFPRESENT :: OutputSdt
pattern OutputSdtSDTFOLLOWIFPRESENT = OutputSdt' "SDT_FOLLOW_IF_PRESENT"

pattern OutputSdtSDTMANUAL :: OutputSdt
pattern OutputSdtSDTMANUAL = OutputSdt' "SDT_MANUAL"

pattern OutputSdtSDTNONE :: OutputSdt
pattern OutputSdtSDTNONE = OutputSdt' "SDT_NONE"

{-# COMPLETE
  OutputSdtSDTFOLLOW,
  OutputSdtSDTFOLLOWIFPRESENT,
  OutputSdtSDTMANUAL,
  OutputSdtSDTNONE,
  OutputSdt'
  #-}

instance Prelude.FromText OutputSdt where
  parser = OutputSdt' Prelude.<$> Prelude.takeText

instance Prelude.ToText OutputSdt where
  toText (OutputSdt' x) = x

instance Prelude.Hashable OutputSdt

instance Prelude.NFData OutputSdt

instance Prelude.ToByteString OutputSdt

instance Prelude.ToQuery OutputSdt

instance Prelude.ToHeader OutputSdt

instance Prelude.ToJSON OutputSdt where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON OutputSdt where
  parseJSON = Prelude.parseJSONText "OutputSdt"
