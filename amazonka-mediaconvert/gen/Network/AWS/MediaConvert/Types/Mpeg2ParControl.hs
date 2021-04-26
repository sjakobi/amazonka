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
-- Module      : Network.AWS.MediaConvert.Types.Mpeg2ParControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Mpeg2ParControl
  ( Mpeg2ParControl
      ( ..,
        Mpeg2ParControlINITIALIZEFROMSOURCE,
        Mpeg2ParControlSPECIFIED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Optional. Specify how the service determines the pixel aspect ratio
-- (PAR) for this output. The default behavior, Follow source
-- (INITIALIZE_FROM_SOURCE), uses the PAR from your input video for your
-- output. To specify a different PAR in the console, choose any value
-- other than Follow source. To specify a different PAR by editing the JSON
-- job specification, choose SPECIFIED. When you choose SPECIFIED for this
-- setting, you must also specify values for the parNumerator and
-- parDenominator settings.
newtype Mpeg2ParControl = Mpeg2ParControl'
  { fromMpeg2ParControl ::
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

pattern Mpeg2ParControlINITIALIZEFROMSOURCE :: Mpeg2ParControl
pattern Mpeg2ParControlINITIALIZEFROMSOURCE = Mpeg2ParControl' "INITIALIZE_FROM_SOURCE"

pattern Mpeg2ParControlSPECIFIED :: Mpeg2ParControl
pattern Mpeg2ParControlSPECIFIED = Mpeg2ParControl' "SPECIFIED"

{-# COMPLETE
  Mpeg2ParControlINITIALIZEFROMSOURCE,
  Mpeg2ParControlSPECIFIED,
  Mpeg2ParControl'
  #-}

instance Prelude.FromText Mpeg2ParControl where
  parser = Mpeg2ParControl' Prelude.<$> Prelude.takeText

instance Prelude.ToText Mpeg2ParControl where
  toText (Mpeg2ParControl' x) = x

instance Prelude.Hashable Mpeg2ParControl

instance Prelude.NFData Mpeg2ParControl

instance Prelude.ToByteString Mpeg2ParControl

instance Prelude.ToQuery Mpeg2ParControl

instance Prelude.ToHeader Mpeg2ParControl

instance Prelude.ToJSON Mpeg2ParControl where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Mpeg2ParControl where
  parseJSON = Prelude.parseJSONText "Mpeg2ParControl"
