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
-- Module      : Network.AWS.MediaConvert.Types.H265ParControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H265ParControl
  ( H265ParControl
      ( ..,
        H265ParControlINITIALIZEFROMSOURCE,
        H265ParControlSPECIFIED
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
newtype H265ParControl = H265ParControl'
  { fromH265ParControl ::
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

pattern H265ParControlINITIALIZEFROMSOURCE :: H265ParControl
pattern H265ParControlINITIALIZEFROMSOURCE = H265ParControl' "INITIALIZE_FROM_SOURCE"

pattern H265ParControlSPECIFIED :: H265ParControl
pattern H265ParControlSPECIFIED = H265ParControl' "SPECIFIED"

{-# COMPLETE
  H265ParControlINITIALIZEFROMSOURCE,
  H265ParControlSPECIFIED,
  H265ParControl'
  #-}

instance Prelude.FromText H265ParControl where
  parser = H265ParControl' Prelude.<$> Prelude.takeText

instance Prelude.ToText H265ParControl where
  toText (H265ParControl' x) = x

instance Prelude.Hashable H265ParControl

instance Prelude.NFData H265ParControl

instance Prelude.ToByteString H265ParControl

instance Prelude.ToQuery H265ParControl

instance Prelude.ToHeader H265ParControl

instance Prelude.ToJSON H265ParControl where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H265ParControl where
  parseJSON = Prelude.parseJSONText "H265ParControl"
