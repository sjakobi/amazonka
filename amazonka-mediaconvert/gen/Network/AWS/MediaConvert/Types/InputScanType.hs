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
-- Module      : Network.AWS.MediaConvert.Types.InputScanType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.InputScanType
  ( InputScanType
      ( ..,
        InputScanTypeAUTO,
        InputScanTypePSF
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | When you have a progressive segmented frame (PsF) input, use this
-- setting to flag the input as PsF. MediaConvert doesn\'t automatically
-- detect PsF. Therefore, flagging your input as PsF results in better
-- preservation of video quality when you do deinterlacing and frame rate
-- conversion. If you don\'t specify, the default value is Auto (AUTO).
-- Auto is the correct setting for all inputs that are not PsF. Don\'t set
-- this value to PsF when your input is interlaced. Doing so creates
-- horizontal interlacing artifacts.
newtype InputScanType = InputScanType'
  { fromInputScanType ::
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

pattern InputScanTypeAUTO :: InputScanType
pattern InputScanTypeAUTO = InputScanType' "AUTO"

pattern InputScanTypePSF :: InputScanType
pattern InputScanTypePSF = InputScanType' "PSF"

{-# COMPLETE
  InputScanTypeAUTO,
  InputScanTypePSF,
  InputScanType'
  #-}

instance Prelude.FromText InputScanType where
  parser = InputScanType' Prelude.<$> Prelude.takeText

instance Prelude.ToText InputScanType where
  toText (InputScanType' x) = x

instance Prelude.Hashable InputScanType

instance Prelude.NFData InputScanType

instance Prelude.ToByteString InputScanType

instance Prelude.ToQuery InputScanType

instance Prelude.ToHeader InputScanType

instance Prelude.ToJSON InputScanType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON InputScanType where
  parseJSON = Prelude.parseJSONText "InputScanType"
