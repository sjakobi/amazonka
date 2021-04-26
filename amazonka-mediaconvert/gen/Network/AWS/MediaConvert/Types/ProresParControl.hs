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
-- Module      : Network.AWS.MediaConvert.Types.ProresParControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.ProresParControl
  ( ProresParControl
      ( ..,
        ProresParControlINITIALIZEFROMSOURCE,
        ProresParControlSPECIFIED
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
newtype ProresParControl = ProresParControl'
  { fromProresParControl ::
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

pattern ProresParControlINITIALIZEFROMSOURCE :: ProresParControl
pattern ProresParControlINITIALIZEFROMSOURCE = ProresParControl' "INITIALIZE_FROM_SOURCE"

pattern ProresParControlSPECIFIED :: ProresParControl
pattern ProresParControlSPECIFIED = ProresParControl' "SPECIFIED"

{-# COMPLETE
  ProresParControlINITIALIZEFROMSOURCE,
  ProresParControlSPECIFIED,
  ProresParControl'
  #-}

instance Prelude.FromText ProresParControl where
  parser = ProresParControl' Prelude.<$> Prelude.takeText

instance Prelude.ToText ProresParControl where
  toText (ProresParControl' x) = x

instance Prelude.Hashable ProresParControl

instance Prelude.NFData ProresParControl

instance Prelude.ToByteString ProresParControl

instance Prelude.ToQuery ProresParControl

instance Prelude.ToHeader ProresParControl

instance Prelude.ToJSON ProresParControl where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ProresParControl where
  parseJSON = Prelude.parseJSONText "ProresParControl"
