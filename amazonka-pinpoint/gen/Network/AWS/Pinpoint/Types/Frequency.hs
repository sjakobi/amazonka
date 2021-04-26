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
-- Module      : Network.AWS.Pinpoint.Types.Frequency
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.Frequency
  ( Frequency
      ( ..,
        FrequencyDAILY,
        FrequencyEVENT,
        FrequencyHOURLY,
        FrequencyMONTHLY,
        FrequencyONCE,
        FrequencyWEEKLY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Frequency = Frequency'
  { fromFrequency ::
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

pattern FrequencyDAILY :: Frequency
pattern FrequencyDAILY = Frequency' "DAILY"

pattern FrequencyEVENT :: Frequency
pattern FrequencyEVENT = Frequency' "EVENT"

pattern FrequencyHOURLY :: Frequency
pattern FrequencyHOURLY = Frequency' "HOURLY"

pattern FrequencyMONTHLY :: Frequency
pattern FrequencyMONTHLY = Frequency' "MONTHLY"

pattern FrequencyONCE :: Frequency
pattern FrequencyONCE = Frequency' "ONCE"

pattern FrequencyWEEKLY :: Frequency
pattern FrequencyWEEKLY = Frequency' "WEEKLY"

{-# COMPLETE
  FrequencyDAILY,
  FrequencyEVENT,
  FrequencyHOURLY,
  FrequencyMONTHLY,
  FrequencyONCE,
  FrequencyWEEKLY,
  Frequency'
  #-}

instance Prelude.FromText Frequency where
  parser = Frequency' Prelude.<$> Prelude.takeText

instance Prelude.ToText Frequency where
  toText (Frequency' x) = x

instance Prelude.Hashable Frequency

instance Prelude.NFData Frequency

instance Prelude.ToByteString Frequency

instance Prelude.ToQuery Frequency

instance Prelude.ToHeader Frequency

instance Prelude.ToJSON Frequency where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Frequency where
  parseJSON = Prelude.parseJSONText "Frequency"
