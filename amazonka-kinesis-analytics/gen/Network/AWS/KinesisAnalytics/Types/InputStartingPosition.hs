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
-- Module      : Network.AWS.KinesisAnalytics.Types.InputStartingPosition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisAnalytics.Types.InputStartingPosition
  ( InputStartingPosition
      ( ..,
        InputStartingPositionLASTSTOPPEDPOINT,
        InputStartingPositionNOW,
        InputStartingPositionTRIMHORIZON
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype InputStartingPosition = InputStartingPosition'
  { fromInputStartingPosition ::
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

pattern InputStartingPositionLASTSTOPPEDPOINT :: InputStartingPosition
pattern InputStartingPositionLASTSTOPPEDPOINT = InputStartingPosition' "LAST_STOPPED_POINT"

pattern InputStartingPositionNOW :: InputStartingPosition
pattern InputStartingPositionNOW = InputStartingPosition' "NOW"

pattern InputStartingPositionTRIMHORIZON :: InputStartingPosition
pattern InputStartingPositionTRIMHORIZON = InputStartingPosition' "TRIM_HORIZON"

{-# COMPLETE
  InputStartingPositionLASTSTOPPEDPOINT,
  InputStartingPositionNOW,
  InputStartingPositionTRIMHORIZON,
  InputStartingPosition'
  #-}

instance Prelude.FromText InputStartingPosition where
  parser = InputStartingPosition' Prelude.<$> Prelude.takeText

instance Prelude.ToText InputStartingPosition where
  toText (InputStartingPosition' x) = x

instance Prelude.Hashable InputStartingPosition

instance Prelude.NFData InputStartingPosition

instance Prelude.ToByteString InputStartingPosition

instance Prelude.ToQuery InputStartingPosition

instance Prelude.ToHeader InputStartingPosition

instance Prelude.ToJSON InputStartingPosition where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON InputStartingPosition where
  parseJSON = Prelude.parseJSONText "InputStartingPosition"
