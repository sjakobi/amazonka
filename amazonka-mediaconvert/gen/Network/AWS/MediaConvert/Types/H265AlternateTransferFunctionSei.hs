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
-- Module      : Network.AWS.MediaConvert.Types.H265AlternateTransferFunctionSei
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H265AlternateTransferFunctionSei
  ( H265AlternateTransferFunctionSei
      ( ..,
        H265AlternateTransferFunctionSeiDISABLED,
        H265AlternateTransferFunctionSeiENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Enables Alternate Transfer Function SEI message for outputs using Hybrid
-- Log Gamma (HLG) Electro-Optical Transfer Function (EOTF).
newtype H265AlternateTransferFunctionSei = H265AlternateTransferFunctionSei'
  { fromH265AlternateTransferFunctionSei ::
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

pattern H265AlternateTransferFunctionSeiDISABLED :: H265AlternateTransferFunctionSei
pattern H265AlternateTransferFunctionSeiDISABLED = H265AlternateTransferFunctionSei' "DISABLED"

pattern H265AlternateTransferFunctionSeiENABLED :: H265AlternateTransferFunctionSei
pattern H265AlternateTransferFunctionSeiENABLED = H265AlternateTransferFunctionSei' "ENABLED"

{-# COMPLETE
  H265AlternateTransferFunctionSeiDISABLED,
  H265AlternateTransferFunctionSeiENABLED,
  H265AlternateTransferFunctionSei'
  #-}

instance Prelude.FromText H265AlternateTransferFunctionSei where
  parser = H265AlternateTransferFunctionSei' Prelude.<$> Prelude.takeText

instance Prelude.ToText H265AlternateTransferFunctionSei where
  toText (H265AlternateTransferFunctionSei' x) = x

instance Prelude.Hashable H265AlternateTransferFunctionSei

instance Prelude.NFData H265AlternateTransferFunctionSei

instance Prelude.ToByteString H265AlternateTransferFunctionSei

instance Prelude.ToQuery H265AlternateTransferFunctionSei

instance Prelude.ToHeader H265AlternateTransferFunctionSei

instance Prelude.ToJSON H265AlternateTransferFunctionSei where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H265AlternateTransferFunctionSei where
  parseJSON = Prelude.parseJSONText "H265AlternateTransferFunctionSei"
