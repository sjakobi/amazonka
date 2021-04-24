{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.DocumentHashType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.DocumentHashType
  ( DocumentHashType
      ( ..,
        HashSHA1,
        HashSHA256
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DocumentHashType = DocumentHashType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern HashSHA1 :: DocumentHashType
pattern HashSHA1 = DocumentHashType' "Sha1"

pattern HashSHA256 :: DocumentHashType
pattern HashSHA256 = DocumentHashType' "Sha256"

{-# COMPLETE
  HashSHA1,
  HashSHA256,
  DocumentHashType'
  #-}

instance FromText DocumentHashType where
  parser = (DocumentHashType' . mk) <$> takeText

instance ToText DocumentHashType where
  toText (DocumentHashType' ci) = original ci

instance Hashable DocumentHashType

instance NFData DocumentHashType

instance ToByteString DocumentHashType

instance ToQuery DocumentHashType

instance ToHeader DocumentHashType

instance ToJSON DocumentHashType where
  toJSON = toJSONText

instance FromJSON DocumentHashType where
  parseJSON = parseJSONText "DocumentHashType"
