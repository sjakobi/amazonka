{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CertificateManager.Types.ValidationMethod
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManager.Types.ValidationMethod
  ( ValidationMethod
      ( ..,
        DNS,
        Email
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ValidationMethod = ValidationMethod' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern DNS :: ValidationMethod
pattern DNS = ValidationMethod' "DNS"

pattern Email :: ValidationMethod
pattern Email = ValidationMethod' "EMAIL"

{-# COMPLETE
  DNS,
  Email,
  ValidationMethod'
  #-}

instance FromText ValidationMethod where
  parser = (ValidationMethod' . mk) <$> takeText

instance ToText ValidationMethod where
  toText (ValidationMethod' ci) = original ci

instance Hashable ValidationMethod

instance NFData ValidationMethod

instance ToByteString ValidationMethod

instance ToQuery ValidationMethod

instance ToHeader ValidationMethod

instance ToJSON ValidationMethod where
  toJSON = toJSONText

instance FromJSON ValidationMethod where
  parseJSON = parseJSONText "ValidationMethod"
