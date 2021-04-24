{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.Types.PhoneNumberType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.PhoneNumberType
  ( PhoneNumberType
      ( ..,
        Home,
        Mobile,
        Work
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data PhoneNumberType = PhoneNumberType' (CI Text)
  deriving (Eq, Ord, Show, Data, Typeable, Generic)

pattern Home :: PhoneNumberType
pattern Home = PhoneNumberType' "HOME"

pattern Mobile :: PhoneNumberType
pattern Mobile = PhoneNumberType' "MOBILE"

pattern Work :: PhoneNumberType
pattern Work = PhoneNumberType' "WORK"

{-# COMPLETE
  Home,
  Mobile,
  Work,
  PhoneNumberType'
  #-}

instance FromText PhoneNumberType where
  parser = (PhoneNumberType' . mk) <$> takeText

instance ToText PhoneNumberType where
  toText (PhoneNumberType' ci) = original ci

instance Hashable PhoneNumberType

instance NFData PhoneNumberType

instance ToByteString PhoneNumberType

instance ToQuery PhoneNumberType

instance ToHeader PhoneNumberType

instance ToJSON PhoneNumberType where
  toJSON = toJSONText

instance FromJSON PhoneNumberType where
  parseJSON = parseJSONText "PhoneNumberType"
