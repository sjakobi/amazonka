{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectoryService.Types.RadiusAuthenticationProtocol
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.RadiusAuthenticationProtocol
  ( RadiusAuthenticationProtocol
      ( ..,
        Chap,
        MsCHAPV1,
        MsCHAPV2,
        Pap
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data RadiusAuthenticationProtocol
  = RadiusAuthenticationProtocol'
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

pattern Chap :: RadiusAuthenticationProtocol
pattern Chap = RadiusAuthenticationProtocol' "CHAP"

pattern MsCHAPV1 :: RadiusAuthenticationProtocol
pattern MsCHAPV1 = RadiusAuthenticationProtocol' "MS-CHAPv1"

pattern MsCHAPV2 :: RadiusAuthenticationProtocol
pattern MsCHAPV2 = RadiusAuthenticationProtocol' "MS-CHAPv2"

pattern Pap :: RadiusAuthenticationProtocol
pattern Pap = RadiusAuthenticationProtocol' "PAP"

{-# COMPLETE
  Chap,
  MsCHAPV1,
  MsCHAPV2,
  Pap,
  RadiusAuthenticationProtocol'
  #-}

instance FromText RadiusAuthenticationProtocol where
  parser = (RadiusAuthenticationProtocol' . mk) <$> takeText

instance ToText RadiusAuthenticationProtocol where
  toText (RadiusAuthenticationProtocol' ci) = original ci

instance Hashable RadiusAuthenticationProtocol

instance NFData RadiusAuthenticationProtocol

instance ToByteString RadiusAuthenticationProtocol

instance ToQuery RadiusAuthenticationProtocol

instance ToHeader RadiusAuthenticationProtocol

instance ToJSON RadiusAuthenticationProtocol where
  toJSON = toJSONText

instance FromJSON RadiusAuthenticationProtocol where
  parseJSON = parseJSONText "RadiusAuthenticationProtocol"
