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
-- Module      : Network.AWS.MediaLive.Types.InputType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputType
  ( InputType
      ( ..,
        InputTypeAWSCDI,
        InputTypeINPUTDEVICE,
        InputTypeMEDIACONNECT,
        InputTypeMP4FILE,
        InputTypeRTMPPULL,
        InputTypeRTMPPUSH,
        InputTypeRTPPUSH,
        InputTypeUDPPUSH,
        InputTypeURLPULL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Placeholder documentation for InputType
newtype InputType = InputType'
  { fromInputType ::
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

pattern InputTypeAWSCDI :: InputType
pattern InputTypeAWSCDI = InputType' "AWS_CDI"

pattern InputTypeINPUTDEVICE :: InputType
pattern InputTypeINPUTDEVICE = InputType' "INPUT_DEVICE"

pattern InputTypeMEDIACONNECT :: InputType
pattern InputTypeMEDIACONNECT = InputType' "MEDIACONNECT"

pattern InputTypeMP4FILE :: InputType
pattern InputTypeMP4FILE = InputType' "MP4_FILE"

pattern InputTypeRTMPPULL :: InputType
pattern InputTypeRTMPPULL = InputType' "RTMP_PULL"

pattern InputTypeRTMPPUSH :: InputType
pattern InputTypeRTMPPUSH = InputType' "RTMP_PUSH"

pattern InputTypeRTPPUSH :: InputType
pattern InputTypeRTPPUSH = InputType' "RTP_PUSH"

pattern InputTypeUDPPUSH :: InputType
pattern InputTypeUDPPUSH = InputType' "UDP_PUSH"

pattern InputTypeURLPULL :: InputType
pattern InputTypeURLPULL = InputType' "URL_PULL"

{-# COMPLETE
  InputTypeAWSCDI,
  InputTypeINPUTDEVICE,
  InputTypeMEDIACONNECT,
  InputTypeMP4FILE,
  InputTypeRTMPPULL,
  InputTypeRTMPPUSH,
  InputTypeRTPPUSH,
  InputTypeUDPPUSH,
  InputTypeURLPULL,
  InputType'
  #-}

instance Prelude.FromText InputType where
  parser = InputType' Prelude.<$> Prelude.takeText

instance Prelude.ToText InputType where
  toText (InputType' x) = x

instance Prelude.Hashable InputType

instance Prelude.NFData InputType

instance Prelude.ToByteString InputType

instance Prelude.ToQuery InputType

instance Prelude.ToHeader InputType

instance Prelude.ToJSON InputType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON InputType where
  parseJSON = Prelude.parseJSONText "InputType"
