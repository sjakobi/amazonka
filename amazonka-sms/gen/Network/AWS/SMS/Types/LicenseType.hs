{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SMS.Types.LicenseType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types.LicenseType
  ( LicenseType
      ( ..,
        AWS,
        Byol
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data LicenseType = LicenseType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AWS :: LicenseType
pattern AWS = LicenseType' "AWS"

pattern Byol :: LicenseType
pattern Byol = LicenseType' "BYOL"

{-# COMPLETE
  AWS,
  Byol,
  LicenseType'
  #-}

instance FromText LicenseType where
  parser = (LicenseType' . mk) <$> takeText

instance ToText LicenseType where
  toText (LicenseType' ci) = original ci

instance Hashable LicenseType

instance NFData LicenseType

instance ToByteString LicenseType

instance ToQuery LicenseType

instance ToHeader LicenseType

instance ToJSON LicenseType where
  toJSON = toJSONText

instance FromJSON LicenseType where
  parseJSON = parseJSONText "LicenseType"
