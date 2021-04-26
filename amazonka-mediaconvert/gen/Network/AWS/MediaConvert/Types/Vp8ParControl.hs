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
-- Module      : Network.AWS.MediaConvert.Types.Vp8ParControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Vp8ParControl
  ( Vp8ParControl
      ( ..,
        Vp8ParControlINITIALIZEFROMSOURCE,
        Vp8ParControlSPECIFIED
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
newtype Vp8ParControl = Vp8ParControl'
  { fromVp8ParControl ::
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

pattern Vp8ParControlINITIALIZEFROMSOURCE :: Vp8ParControl
pattern Vp8ParControlINITIALIZEFROMSOURCE = Vp8ParControl' "INITIALIZE_FROM_SOURCE"

pattern Vp8ParControlSPECIFIED :: Vp8ParControl
pattern Vp8ParControlSPECIFIED = Vp8ParControl' "SPECIFIED"

{-# COMPLETE
  Vp8ParControlINITIALIZEFROMSOURCE,
  Vp8ParControlSPECIFIED,
  Vp8ParControl'
  #-}

instance Prelude.FromText Vp8ParControl where
  parser = Vp8ParControl' Prelude.<$> Prelude.takeText

instance Prelude.ToText Vp8ParControl where
  toText (Vp8ParControl' x) = x

instance Prelude.Hashable Vp8ParControl

instance Prelude.NFData Vp8ParControl

instance Prelude.ToByteString Vp8ParControl

instance Prelude.ToQuery Vp8ParControl

instance Prelude.ToHeader Vp8ParControl

instance Prelude.ToJSON Vp8ParControl where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Vp8ParControl where
  parseJSON = Prelude.parseJSONText "Vp8ParControl"
