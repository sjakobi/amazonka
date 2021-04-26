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
-- Module      : Network.AWS.MediaConvert.Types.AccelerationMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.AccelerationMode
  ( AccelerationMode
      ( ..,
        AccelerationModeDISABLED,
        AccelerationModeENABLED,
        AccelerationModePREFERRED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specify whether the service runs your job with accelerated transcoding.
-- Choose DISABLED if you don\'t want accelerated transcoding. Choose
-- ENABLED if you want your job to run with accelerated transcoding and to
-- fail if your input files or your job settings aren\'t compatible with
-- accelerated transcoding. Choose PREFERRED if you want your job to run
-- with accelerated transcoding if the job is compatible with the feature
-- and to run at standard speed if it\'s not.
newtype AccelerationMode = AccelerationMode'
  { fromAccelerationMode ::
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

pattern AccelerationModeDISABLED :: AccelerationMode
pattern AccelerationModeDISABLED = AccelerationMode' "DISABLED"

pattern AccelerationModeENABLED :: AccelerationMode
pattern AccelerationModeENABLED = AccelerationMode' "ENABLED"

pattern AccelerationModePREFERRED :: AccelerationMode
pattern AccelerationModePREFERRED = AccelerationMode' "PREFERRED"

{-# COMPLETE
  AccelerationModeDISABLED,
  AccelerationModeENABLED,
  AccelerationModePREFERRED,
  AccelerationMode'
  #-}

instance Prelude.FromText AccelerationMode where
  parser = AccelerationMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText AccelerationMode where
  toText (AccelerationMode' x) = x

instance Prelude.Hashable AccelerationMode

instance Prelude.NFData AccelerationMode

instance Prelude.ToByteString AccelerationMode

instance Prelude.ToQuery AccelerationMode

instance Prelude.ToHeader AccelerationMode

instance Prelude.ToJSON AccelerationMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AccelerationMode where
  parseJSON = Prelude.parseJSONText "AccelerationMode"
