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
-- Module      : Network.AWS.MediaLive.Types.Smpte2038DataPreference
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Smpte2038DataPreference
  ( Smpte2038DataPreference
      ( ..,
        Smpte2038DataPreferenceIGNORE,
        Smpte2038DataPreferencePREFER
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Smpte2038 Data Preference
newtype Smpte2038DataPreference = Smpte2038DataPreference'
  { fromSmpte2038DataPreference ::
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

pattern Smpte2038DataPreferenceIGNORE :: Smpte2038DataPreference
pattern Smpte2038DataPreferenceIGNORE = Smpte2038DataPreference' "IGNORE"

pattern Smpte2038DataPreferencePREFER :: Smpte2038DataPreference
pattern Smpte2038DataPreferencePREFER = Smpte2038DataPreference' "PREFER"

{-# COMPLETE
  Smpte2038DataPreferenceIGNORE,
  Smpte2038DataPreferencePREFER,
  Smpte2038DataPreference'
  #-}

instance Prelude.FromText Smpte2038DataPreference where
  parser = Smpte2038DataPreference' Prelude.<$> Prelude.takeText

instance Prelude.ToText Smpte2038DataPreference where
  toText (Smpte2038DataPreference' x) = x

instance Prelude.Hashable Smpte2038DataPreference

instance Prelude.NFData Smpte2038DataPreference

instance Prelude.ToByteString Smpte2038DataPreference

instance Prelude.ToQuery Smpte2038DataPreference

instance Prelude.ToHeader Smpte2038DataPreference

instance Prelude.ToJSON Smpte2038DataPreference where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Smpte2038DataPreference where
  parseJSON = Prelude.parseJSONText "Smpte2038DataPreference"
