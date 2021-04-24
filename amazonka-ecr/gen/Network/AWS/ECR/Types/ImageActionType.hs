{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECR.Types.ImageActionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECR.Types.ImageActionType
  ( ImageActionType
      ( ..,
        Expire
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ImageActionType = ImageActionType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Expire :: ImageActionType
pattern Expire = ImageActionType' "EXPIRE"

{-# COMPLETE
  Expire,
  ImageActionType'
  #-}

instance FromText ImageActionType where
  parser = (ImageActionType' . mk) <$> takeText

instance ToText ImageActionType where
  toText (ImageActionType' ci) = original ci

instance Hashable ImageActionType

instance NFData ImageActionType

instance ToByteString ImageActionType

instance ToQuery ImageActionType

instance ToHeader ImageActionType

instance FromJSON ImageActionType where
  parseJSON = parseJSONText "ImageActionType"
