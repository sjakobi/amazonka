{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.InputFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputFilter
  ( InputFilter
      ( ..,
        IFAuto,
        IFDisabled,
        IFForced
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Input Filter
data InputFilter = InputFilter' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern IFAuto :: InputFilter
pattern IFAuto = InputFilter' "AUTO"

pattern IFDisabled :: InputFilter
pattern IFDisabled = InputFilter' "DISABLED"

pattern IFForced :: InputFilter
pattern IFForced = InputFilter' "FORCED"

{-# COMPLETE
  IFAuto,
  IFDisabled,
  IFForced,
  InputFilter'
  #-}

instance FromText InputFilter where
  parser = (InputFilter' . mk) <$> takeText

instance ToText InputFilter where
  toText (InputFilter' ci) = original ci

instance Hashable InputFilter

instance NFData InputFilter

instance ToByteString InputFilter

instance ToQuery InputFilter

instance ToHeader InputFilter

instance ToJSON InputFilter where
  toJSON = toJSONText

instance FromJSON InputFilter where
  parseJSON = parseJSONText "InputFilter"
