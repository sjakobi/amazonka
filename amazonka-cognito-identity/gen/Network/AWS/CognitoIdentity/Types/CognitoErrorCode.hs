{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentity.Types.CognitoErrorCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentity.Types.CognitoErrorCode
  ( CognitoErrorCode
      ( ..,
        AccessDenied,
        InternalServerError
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CognitoErrorCode = CognitoErrorCode' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AccessDenied :: CognitoErrorCode
pattern AccessDenied = CognitoErrorCode' "AccessDenied"

pattern InternalServerError :: CognitoErrorCode
pattern InternalServerError = CognitoErrorCode' "InternalServerError"

{-# COMPLETE
  AccessDenied,
  InternalServerError,
  CognitoErrorCode'
  #-}

instance FromText CognitoErrorCode where
  parser = (CognitoErrorCode' . mk) <$> takeText

instance ToText CognitoErrorCode where
  toText (CognitoErrorCode' ci) = original ci

instance Hashable CognitoErrorCode

instance NFData CognitoErrorCode

instance ToByteString CognitoErrorCode

instance ToQuery CognitoErrorCode

instance ToHeader CognitoErrorCode

instance FromJSON CognitoErrorCode where
  parseJSON = parseJSONText "CognitoErrorCode"
