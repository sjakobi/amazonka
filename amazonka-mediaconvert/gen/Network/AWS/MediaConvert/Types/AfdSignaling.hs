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
-- Module      : Network.AWS.MediaConvert.Types.AfdSignaling
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.AfdSignaling
  ( AfdSignaling
      ( ..,
        AfdSignalingAUTO,
        AfdSignalingFIXED,
        AfdSignalingNONE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | This setting only applies to H.264, H.265, and MPEG2 outputs. Use Insert
-- AFD signaling (AfdSignaling) to specify whether the service includes AFD
-- values in the output video data and what those values are. * Choose None
-- to remove all AFD values from this output. * Choose Fixed to ignore
-- input AFD values and instead encode the value specified in the job. *
-- Choose Auto to calculate output AFD values based on the input AFD scaler
-- data.
newtype AfdSignaling = AfdSignaling'
  { fromAfdSignaling ::
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

pattern AfdSignalingAUTO :: AfdSignaling
pattern AfdSignalingAUTO = AfdSignaling' "AUTO"

pattern AfdSignalingFIXED :: AfdSignaling
pattern AfdSignalingFIXED = AfdSignaling' "FIXED"

pattern AfdSignalingNONE :: AfdSignaling
pattern AfdSignalingNONE = AfdSignaling' "NONE"

{-# COMPLETE
  AfdSignalingAUTO,
  AfdSignalingFIXED,
  AfdSignalingNONE,
  AfdSignaling'
  #-}

instance Prelude.FromText AfdSignaling where
  parser = AfdSignaling' Prelude.<$> Prelude.takeText

instance Prelude.ToText AfdSignaling where
  toText (AfdSignaling' x) = x

instance Prelude.Hashable AfdSignaling

instance Prelude.NFData AfdSignaling

instance Prelude.ToByteString AfdSignaling

instance Prelude.ToQuery AfdSignaling

instance Prelude.ToHeader AfdSignaling

instance Prelude.ToJSON AfdSignaling where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AfdSignaling where
  parseJSON = Prelude.parseJSONText "AfdSignaling"
