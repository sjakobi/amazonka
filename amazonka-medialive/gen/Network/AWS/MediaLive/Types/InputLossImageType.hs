{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.InputLossImageType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputLossImageType
  ( InputLossImageType
      ( ..,
        Color,
        Slate
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Input Loss Image Type
data InputLossImageType
  = InputLossImageType'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Color :: InputLossImageType
pattern Color = InputLossImageType' "COLOR"

pattern Slate :: InputLossImageType
pattern Slate = InputLossImageType' "SLATE"

{-# COMPLETE
  Color,
  Slate,
  InputLossImageType'
  #-}

instance FromText InputLossImageType where
  parser = (InputLossImageType' . mk) <$> takeText

instance ToText InputLossImageType where
  toText (InputLossImageType' ci) = original ci

instance Hashable InputLossImageType

instance NFData InputLossImageType

instance ToByteString InputLossImageType

instance ToQuery InputLossImageType

instance ToHeader InputLossImageType

instance ToJSON InputLossImageType where
  toJSON = toJSONText

instance FromJSON InputLossImageType where
  parseJSON = parseJSONText "InputLossImageType"
