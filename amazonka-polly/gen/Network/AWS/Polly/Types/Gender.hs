{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Polly.Types.Gender
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Polly.Types.Gender
  ( Gender
      ( ..,
        Female,
        Male
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data Gender = Gender' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Female :: Gender
pattern Female = Gender' "Female"

pattern Male :: Gender
pattern Male = Gender' "Male"

{-# COMPLETE
  Female,
  Male,
  Gender'
  #-}

instance FromText Gender where
  parser = (Gender' . mk) <$> takeText

instance ToText Gender where
  toText (Gender' ci) = original ci

instance Hashable Gender

instance NFData Gender

instance ToByteString Gender

instance ToQuery Gender

instance ToHeader Gender

instance FromJSON Gender where
  parseJSON = parseJSONText "Gender"
