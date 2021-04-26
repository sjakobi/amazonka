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
-- Module      : Network.AWS.MediaLive.Types.DvbSdtOutputSdt
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.DvbSdtOutputSdt
  ( DvbSdtOutputSdt
      ( ..,
        DvbSdtOutputSdtSDTFOLLOW,
        DvbSdtOutputSdtSDTFOLLOWIFPRESENT,
        DvbSdtOutputSdtSDTMANUAL,
        DvbSdtOutputSdtSDTNONE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Dvb Sdt Output Sdt
newtype DvbSdtOutputSdt = DvbSdtOutputSdt'
  { fromDvbSdtOutputSdt ::
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

pattern DvbSdtOutputSdtSDTFOLLOW :: DvbSdtOutputSdt
pattern DvbSdtOutputSdtSDTFOLLOW = DvbSdtOutputSdt' "SDT_FOLLOW"

pattern DvbSdtOutputSdtSDTFOLLOWIFPRESENT :: DvbSdtOutputSdt
pattern DvbSdtOutputSdtSDTFOLLOWIFPRESENT = DvbSdtOutputSdt' "SDT_FOLLOW_IF_PRESENT"

pattern DvbSdtOutputSdtSDTMANUAL :: DvbSdtOutputSdt
pattern DvbSdtOutputSdtSDTMANUAL = DvbSdtOutputSdt' "SDT_MANUAL"

pattern DvbSdtOutputSdtSDTNONE :: DvbSdtOutputSdt
pattern DvbSdtOutputSdtSDTNONE = DvbSdtOutputSdt' "SDT_NONE"

{-# COMPLETE
  DvbSdtOutputSdtSDTFOLLOW,
  DvbSdtOutputSdtSDTFOLLOWIFPRESENT,
  DvbSdtOutputSdtSDTMANUAL,
  DvbSdtOutputSdtSDTNONE,
  DvbSdtOutputSdt'
  #-}

instance Prelude.FromText DvbSdtOutputSdt where
  parser = DvbSdtOutputSdt' Prelude.<$> Prelude.takeText

instance Prelude.ToText DvbSdtOutputSdt where
  toText (DvbSdtOutputSdt' x) = x

instance Prelude.Hashable DvbSdtOutputSdt

instance Prelude.NFData DvbSdtOutputSdt

instance Prelude.ToByteString DvbSdtOutputSdt

instance Prelude.ToQuery DvbSdtOutputSdt

instance Prelude.ToHeader DvbSdtOutputSdt

instance Prelude.ToJSON DvbSdtOutputSdt where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DvbSdtOutputSdt where
  parseJSON = Prelude.parseJSONText "DvbSdtOutputSdt"
