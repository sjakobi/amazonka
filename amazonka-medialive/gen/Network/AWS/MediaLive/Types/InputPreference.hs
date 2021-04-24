{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.InputPreference
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputPreference
  ( InputPreference
      ( ..,
        EqualInputPreference,
        PrimaryInputPreferred
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Input preference when deciding which input to make active when a previously failed input has recovered.
--
-- If \"EQUAL_INPUT_PREFERENCE\", then the active input will stay active as long as it is healthy.
-- If \"PRIMARY_INPUT_PREFERRED\", then always switch back to the primary input when it is healthy.
data InputPreference = InputPreference' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern EqualInputPreference :: InputPreference
pattern EqualInputPreference = InputPreference' "EQUAL_INPUT_PREFERENCE"

pattern PrimaryInputPreferred :: InputPreference
pattern PrimaryInputPreferred = InputPreference' "PRIMARY_INPUT_PREFERRED"

{-# COMPLETE
  EqualInputPreference,
  PrimaryInputPreferred,
  InputPreference'
  #-}

instance FromText InputPreference where
  parser = (InputPreference' . mk) <$> takeText

instance ToText InputPreference where
  toText (InputPreference' ci) = original ci

instance Hashable InputPreference

instance NFData InputPreference

instance ToByteString InputPreference

instance ToQuery InputPreference

instance ToHeader InputPreference

instance ToJSON InputPreference where
  toJSON = toJSONText

instance FromJSON InputPreference where
  parseJSON = parseJSONText "InputPreference"
