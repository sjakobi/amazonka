{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFront.Types.Method
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.Method
  ( Method
      ( ..,
        Delete,
        Get,
        Head,
        Options,
        Patch,
        Post,
        Put
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data Method = Method' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Delete :: Method
pattern Delete = Method' "DELETE"

pattern Get :: Method
pattern Get = Method' "GET"

pattern Head :: Method
pattern Head = Method' "HEAD"

pattern Options :: Method
pattern Options = Method' "OPTIONS"

pattern Patch :: Method
pattern Patch = Method' "PATCH"

pattern Post :: Method
pattern Post = Method' "POST"

pattern Put :: Method
pattern Put = Method' "PUT"

{-# COMPLETE
  Delete,
  Get,
  Head,
  Options,
  Patch,
  Post,
  Put,
  Method'
  #-}

instance FromText Method where
  parser = (Method' . mk) <$> takeText

instance ToText Method where
  toText (Method' ci) = original ci

instance Hashable Method

instance NFData Method

instance ToByteString Method

instance ToQuery Method

instance ToHeader Method

instance FromXML Method where
  parseXML = parseXMLText "Method"

instance ToXML Method where
  toXML = toXMLText
