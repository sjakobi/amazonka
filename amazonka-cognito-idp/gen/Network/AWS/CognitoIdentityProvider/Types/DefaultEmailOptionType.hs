{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.Types.DefaultEmailOptionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.DefaultEmailOptionType
  ( DefaultEmailOptionType
      ( ..,
        ConfirmWithCode,
        ConfirmWithLink
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DefaultEmailOptionType
  = DefaultEmailOptionType'
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

pattern ConfirmWithCode :: DefaultEmailOptionType
pattern ConfirmWithCode = DefaultEmailOptionType' "CONFIRM_WITH_CODE"

pattern ConfirmWithLink :: DefaultEmailOptionType
pattern ConfirmWithLink = DefaultEmailOptionType' "CONFIRM_WITH_LINK"

{-# COMPLETE
  ConfirmWithCode,
  ConfirmWithLink,
  DefaultEmailOptionType'
  #-}

instance FromText DefaultEmailOptionType where
  parser = (DefaultEmailOptionType' . mk) <$> takeText

instance ToText DefaultEmailOptionType where
  toText (DefaultEmailOptionType' ci) = original ci

instance Hashable DefaultEmailOptionType

instance NFData DefaultEmailOptionType

instance ToByteString DefaultEmailOptionType

instance ToQuery DefaultEmailOptionType

instance ToHeader DefaultEmailOptionType

instance ToJSON DefaultEmailOptionType where
  toJSON = toJSONText

instance FromJSON DefaultEmailOptionType where
  parseJSON = parseJSONText "DefaultEmailOptionType"
