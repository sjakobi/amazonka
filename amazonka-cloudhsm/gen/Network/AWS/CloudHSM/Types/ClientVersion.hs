{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudHSM.Types.ClientVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudHSM.Types.ClientVersion
  ( ClientVersion
      ( ..,
        VD5_1,
        VD5_3
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ClientVersion = ClientVersion' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern VD5_1 :: ClientVersion
pattern VD5_1 = ClientVersion' "5.1"

pattern VD5_3 :: ClientVersion
pattern VD5_3 = ClientVersion' "5.3"

{-# COMPLETE
  VD5_1,
  VD5_3,
  ClientVersion'
  #-}

instance FromText ClientVersion where
  parser = (ClientVersion' . mk) <$> takeText

instance ToText ClientVersion where
  toText (ClientVersion' ci) = original ci

instance Hashable ClientVersion

instance NFData ClientVersion

instance ToByteString ClientVersion

instance ToQuery ClientVersion

instance ToHeader ClientVersion

instance ToJSON ClientVersion where
  toJSON = toJSONText
