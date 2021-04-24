{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.Types.PreventUserExistenceErrorTypes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.PreventUserExistenceErrorTypes
  ( PreventUserExistenceErrorTypes
      ( ..,
        PUEETEnabled,
        PUEETLegacy
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data PreventUserExistenceErrorTypes
  = PreventUserExistenceErrorTypes'
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

pattern PUEETEnabled :: PreventUserExistenceErrorTypes
pattern PUEETEnabled = PreventUserExistenceErrorTypes' "ENABLED"

pattern PUEETLegacy :: PreventUserExistenceErrorTypes
pattern PUEETLegacy = PreventUserExistenceErrorTypes' "LEGACY"

{-# COMPLETE
  PUEETEnabled,
  PUEETLegacy,
  PreventUserExistenceErrorTypes'
  #-}

instance FromText PreventUserExistenceErrorTypes where
  parser = (PreventUserExistenceErrorTypes' . mk) <$> takeText

instance ToText PreventUserExistenceErrorTypes where
  toText (PreventUserExistenceErrorTypes' ci) = original ci

instance Hashable PreventUserExistenceErrorTypes

instance NFData PreventUserExistenceErrorTypes

instance ToByteString PreventUserExistenceErrorTypes

instance ToQuery PreventUserExistenceErrorTypes

instance ToHeader PreventUserExistenceErrorTypes

instance ToJSON PreventUserExistenceErrorTypes where
  toJSON = toJSONText

instance FromJSON PreventUserExistenceErrorTypes where
  parseJSON = parseJSONText "PreventUserExistenceErrorTypes"
