{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SMS.Types.AppValidationStrategy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types.AppValidationStrategy
  ( AppValidationStrategy
      ( ..,
        Ssm
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AppValidationStrategy
  = AppValidationStrategy'
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

pattern Ssm :: AppValidationStrategy
pattern Ssm = AppValidationStrategy' "SSM"

{-# COMPLETE
  Ssm,
  AppValidationStrategy'
  #-}

instance FromText AppValidationStrategy where
  parser = (AppValidationStrategy' . mk) <$> takeText

instance ToText AppValidationStrategy where
  toText (AppValidationStrategy' ci) = original ci

instance Hashable AppValidationStrategy

instance NFData AppValidationStrategy

instance ToByteString AppValidationStrategy

instance ToQuery AppValidationStrategy

instance ToHeader AppValidationStrategy

instance ToJSON AppValidationStrategy where
  toJSON = toJSONText

instance FromJSON AppValidationStrategy where
  parseJSON = parseJSONText "AppValidationStrategy"
