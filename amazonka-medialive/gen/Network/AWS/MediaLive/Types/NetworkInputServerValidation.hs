{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.NetworkInputServerValidation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.NetworkInputServerValidation
  ( NetworkInputServerValidation
      ( ..,
        CheckCryptographyAndValidateName,
        CheckCryptographyOnly
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Network Input Server Validation
data NetworkInputServerValidation
  = NetworkInputServerValidation'
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

pattern CheckCryptographyAndValidateName :: NetworkInputServerValidation
pattern CheckCryptographyAndValidateName = NetworkInputServerValidation' "CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME"

pattern CheckCryptographyOnly :: NetworkInputServerValidation
pattern CheckCryptographyOnly = NetworkInputServerValidation' "CHECK_CRYPTOGRAPHY_ONLY"

{-# COMPLETE
  CheckCryptographyAndValidateName,
  CheckCryptographyOnly,
  NetworkInputServerValidation'
  #-}

instance FromText NetworkInputServerValidation where
  parser = (NetworkInputServerValidation' . mk) <$> takeText

instance ToText NetworkInputServerValidation where
  toText (NetworkInputServerValidation' ci) = original ci

instance Hashable NetworkInputServerValidation

instance NFData NetworkInputServerValidation

instance ToByteString NetworkInputServerValidation

instance ToQuery NetworkInputServerValidation

instance ToHeader NetworkInputServerValidation

instance ToJSON NetworkInputServerValidation where
  toJSON = toJSONText

instance FromJSON NetworkInputServerValidation where
  parseJSON = parseJSONText "NetworkInputServerValidation"
