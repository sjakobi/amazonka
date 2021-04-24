{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.APIGateway.Types.LocationStatusType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.APIGateway.Types.LocationStatusType
  ( LocationStatusType
      ( ..,
        Documented,
        Undocumented
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data LocationStatusType
  = LocationStatusType'
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

pattern Documented :: LocationStatusType
pattern Documented = LocationStatusType' "DOCUMENTED"

pattern Undocumented :: LocationStatusType
pattern Undocumented = LocationStatusType' "UNDOCUMENTED"

{-# COMPLETE
  Documented,
  Undocumented,
  LocationStatusType'
  #-}

instance FromText LocationStatusType where
  parser = (LocationStatusType' . mk) <$> takeText

instance ToText LocationStatusType where
  toText (LocationStatusType' ci) = original ci

instance Hashable LocationStatusType

instance NFData LocationStatusType

instance ToByteString LocationStatusType

instance ToQuery LocationStatusType

instance ToHeader LocationStatusType

instance ToJSON LocationStatusType where
  toJSON = toJSONText
