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
-- Module      : Network.AWS.MediaConvert.Types.Av1RateControlMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Av1RateControlMode
  ( Av1RateControlMode
      ( ..,
        Av1RateControlModeQVBR
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | \'With AV1 outputs, for rate control mode, MediaConvert supports only
-- quality-defined variable bitrate (QVBR). You can\'\'t use CBR or VBR.\'
newtype Av1RateControlMode = Av1RateControlMode'
  { fromAv1RateControlMode ::
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

pattern Av1RateControlModeQVBR :: Av1RateControlMode
pattern Av1RateControlModeQVBR = Av1RateControlMode' "QVBR"

{-# COMPLETE
  Av1RateControlModeQVBR,
  Av1RateControlMode'
  #-}

instance Prelude.FromText Av1RateControlMode where
  parser = Av1RateControlMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText Av1RateControlMode where
  toText (Av1RateControlMode' x) = x

instance Prelude.Hashable Av1RateControlMode

instance Prelude.NFData Av1RateControlMode

instance Prelude.ToByteString Av1RateControlMode

instance Prelude.ToQuery Av1RateControlMode

instance Prelude.ToHeader Av1RateControlMode

instance Prelude.ToJSON Av1RateControlMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Av1RateControlMode where
  parseJSON = Prelude.parseJSONText "Av1RateControlMode"
