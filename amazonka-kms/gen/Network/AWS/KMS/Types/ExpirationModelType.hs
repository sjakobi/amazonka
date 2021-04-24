{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KMS.Types.ExpirationModelType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KMS.Types.ExpirationModelType
  ( ExpirationModelType
      ( ..,
        KeyMaterialDoesNotExpire,
        KeyMaterialExpires
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ExpirationModelType
  = ExpirationModelType'
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

pattern KeyMaterialDoesNotExpire :: ExpirationModelType
pattern KeyMaterialDoesNotExpire = ExpirationModelType' "KEY_MATERIAL_DOES_NOT_EXPIRE"

pattern KeyMaterialExpires :: ExpirationModelType
pattern KeyMaterialExpires = ExpirationModelType' "KEY_MATERIAL_EXPIRES"

{-# COMPLETE
  KeyMaterialDoesNotExpire,
  KeyMaterialExpires,
  ExpirationModelType'
  #-}

instance FromText ExpirationModelType where
  parser = (ExpirationModelType' . mk) <$> takeText

instance ToText ExpirationModelType where
  toText (ExpirationModelType' ci) = original ci

instance Hashable ExpirationModelType

instance NFData ExpirationModelType

instance ToByteString ExpirationModelType

instance ToQuery ExpirationModelType

instance ToHeader ExpirationModelType

instance ToJSON ExpirationModelType where
  toJSON = toJSONText

instance FromJSON ExpirationModelType where
  parseJSON = parseJSONText "ExpirationModelType"
