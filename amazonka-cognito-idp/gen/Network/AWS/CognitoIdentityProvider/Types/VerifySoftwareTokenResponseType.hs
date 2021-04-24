{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.Types.VerifySoftwareTokenResponseType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.VerifySoftwareTokenResponseType
  ( VerifySoftwareTokenResponseType
      ( ..,
        VSTRTError',
        VSTRTSuccess
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data VerifySoftwareTokenResponseType
  = VerifySoftwareTokenResponseType'
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

pattern VSTRTError' :: VerifySoftwareTokenResponseType
pattern VSTRTError' = VerifySoftwareTokenResponseType' "ERROR"

pattern VSTRTSuccess :: VerifySoftwareTokenResponseType
pattern VSTRTSuccess = VerifySoftwareTokenResponseType' "SUCCESS"

{-# COMPLETE
  VSTRTError',
  VSTRTSuccess,
  VerifySoftwareTokenResponseType'
  #-}

instance FromText VerifySoftwareTokenResponseType where
  parser = (VerifySoftwareTokenResponseType' . mk) <$> takeText

instance ToText VerifySoftwareTokenResponseType where
  toText (VerifySoftwareTokenResponseType' ci) = original ci

instance Hashable VerifySoftwareTokenResponseType

instance NFData VerifySoftwareTokenResponseType

instance ToByteString VerifySoftwareTokenResponseType

instance ToQuery VerifySoftwareTokenResponseType

instance ToHeader VerifySoftwareTokenResponseType

instance FromJSON VerifySoftwareTokenResponseType where
  parseJSON = parseJSONText "VerifySoftwareTokenResponseType"
