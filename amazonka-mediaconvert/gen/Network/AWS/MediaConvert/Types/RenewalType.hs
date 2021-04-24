{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.RenewalType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.RenewalType
  ( RenewalType
      ( ..,
        AutoRenew,
        Expire
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Specifies whether the term of your reserved queue pricing plan is automatically extended (AUTO_RENEW) or expires (EXPIRE) at the end of the term.
data RenewalType = RenewalType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AutoRenew :: RenewalType
pattern AutoRenew = RenewalType' "AUTO_RENEW"

pattern Expire :: RenewalType
pattern Expire = RenewalType' "EXPIRE"

{-# COMPLETE
  AutoRenew,
  Expire,
  RenewalType'
  #-}

instance FromText RenewalType where
  parser = (RenewalType' . mk) <$> takeText

instance ToText RenewalType where
  toText (RenewalType' ci) = original ci

instance Hashable RenewalType

instance NFData RenewalType

instance ToByteString RenewalType

instance ToQuery RenewalType

instance ToHeader RenewalType

instance ToJSON RenewalType where
  toJSON = toJSONText

instance FromJSON RenewalType where
  parseJSON = parseJSONText "RenewalType"
