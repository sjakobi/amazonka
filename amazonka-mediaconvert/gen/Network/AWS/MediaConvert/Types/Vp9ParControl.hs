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
-- Module      : Network.AWS.MediaConvert.Types.Vp9ParControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Vp9ParControl
  ( Vp9ParControl
      ( ..,
        Vp9ParControlINITIALIZEFROMSOURCE,
        Vp9ParControlSPECIFIED
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
newtype Vp9ParControl = Vp9ParControl'
  { fromVp9ParControl ::
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

pattern Vp9ParControlINITIALIZEFROMSOURCE :: Vp9ParControl
pattern Vp9ParControlINITIALIZEFROMSOURCE = Vp9ParControl' "INITIALIZE_FROM_SOURCE"

pattern Vp9ParControlSPECIFIED :: Vp9ParControl
pattern Vp9ParControlSPECIFIED = Vp9ParControl' "SPECIFIED"

{-# COMPLETE
  Vp9ParControlINITIALIZEFROMSOURCE,
  Vp9ParControlSPECIFIED,
  Vp9ParControl'
  #-}

instance Prelude.FromText Vp9ParControl where
  parser = Vp9ParControl' Prelude.<$> Prelude.takeText

instance Prelude.ToText Vp9ParControl where
  toText (Vp9ParControl' x) = x

instance Prelude.Hashable Vp9ParControl

instance Prelude.NFData Vp9ParControl

instance Prelude.ToByteString Vp9ParControl

instance Prelude.ToQuery Vp9ParControl

instance Prelude.ToHeader Vp9ParControl

instance Prelude.ToJSON Vp9ParControl where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Vp9ParControl where
  parseJSON = Prelude.parseJSONText "Vp9ParControl"
