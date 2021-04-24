{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SES.Types.SNSActionEncoding
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SES.Types.SNSActionEncoding
  ( SNSActionEncoding
      ( ..,
        BASE64,
        Utf8
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SNSActionEncoding = SNSActionEncoding' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern BASE64 :: SNSActionEncoding
pattern BASE64 = SNSActionEncoding' "Base64"

pattern Utf8 :: SNSActionEncoding
pattern Utf8 = SNSActionEncoding' "UTF-8"

{-# COMPLETE
  BASE64,
  Utf8,
  SNSActionEncoding'
  #-}

instance FromText SNSActionEncoding where
  parser = (SNSActionEncoding' . mk) <$> takeText

instance ToText SNSActionEncoding where
  toText (SNSActionEncoding' ci) = original ci

instance Hashable SNSActionEncoding

instance NFData SNSActionEncoding

instance ToByteString SNSActionEncoding

instance ToQuery SNSActionEncoding

instance ToHeader SNSActionEncoding

instance FromXML SNSActionEncoding where
  parseXML = parseXMLText "SNSActionEncoding"
