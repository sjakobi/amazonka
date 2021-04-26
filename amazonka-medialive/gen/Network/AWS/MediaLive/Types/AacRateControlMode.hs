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
-- Module      : Network.AWS.MediaLive.Types.AacRateControlMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.AacRateControlMode
  ( AacRateControlMode
      ( ..,
        AacRateControlModeCBR,
        AacRateControlModeVBR
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Aac Rate Control Mode
newtype AacRateControlMode = AacRateControlMode'
  { fromAacRateControlMode ::
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

pattern AacRateControlModeCBR :: AacRateControlMode
pattern AacRateControlModeCBR = AacRateControlMode' "CBR"

pattern AacRateControlModeVBR :: AacRateControlMode
pattern AacRateControlModeVBR = AacRateControlMode' "VBR"

{-# COMPLETE
  AacRateControlModeCBR,
  AacRateControlModeVBR,
  AacRateControlMode'
  #-}

instance Prelude.FromText AacRateControlMode where
  parser = AacRateControlMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText AacRateControlMode where
  toText (AacRateControlMode' x) = x

instance Prelude.Hashable AacRateControlMode

instance Prelude.NFData AacRateControlMode

instance Prelude.ToByteString AacRateControlMode

instance Prelude.ToQuery AacRateControlMode

instance Prelude.ToHeader AacRateControlMode

instance Prelude.ToJSON AacRateControlMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AacRateControlMode where
  parseJSON = Prelude.parseJSONText "AacRateControlMode"
