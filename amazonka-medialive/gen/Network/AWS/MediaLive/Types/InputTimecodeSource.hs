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
-- Module      : Network.AWS.MediaLive.Types.InputTimecodeSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputTimecodeSource
  ( InputTimecodeSource
      ( ..,
        InputTimecodeSourceEMBEDDED,
        InputTimecodeSourceZEROBASED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Documentation update needed
newtype InputTimecodeSource = InputTimecodeSource'
  { fromInputTimecodeSource ::
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

pattern InputTimecodeSourceEMBEDDED :: InputTimecodeSource
pattern InputTimecodeSourceEMBEDDED = InputTimecodeSource' "EMBEDDED"

pattern InputTimecodeSourceZEROBASED :: InputTimecodeSource
pattern InputTimecodeSourceZEROBASED = InputTimecodeSource' "ZEROBASED"

{-# COMPLETE
  InputTimecodeSourceEMBEDDED,
  InputTimecodeSourceZEROBASED,
  InputTimecodeSource'
  #-}

instance Prelude.FromText InputTimecodeSource where
  parser = InputTimecodeSource' Prelude.<$> Prelude.takeText

instance Prelude.ToText InputTimecodeSource where
  toText (InputTimecodeSource' x) = x

instance Prelude.Hashable InputTimecodeSource

instance Prelude.NFData InputTimecodeSource

instance Prelude.ToByteString InputTimecodeSource

instance Prelude.ToQuery InputTimecodeSource

instance Prelude.ToHeader InputTimecodeSource

instance Prelude.ToJSON InputTimecodeSource where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON InputTimecodeSource where
  parseJSON = Prelude.parseJSONText "InputTimecodeSource"
