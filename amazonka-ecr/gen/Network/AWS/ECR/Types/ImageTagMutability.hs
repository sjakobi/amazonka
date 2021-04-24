{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECR.Types.ImageTagMutability
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECR.Types.ImageTagMutability
  ( ImageTagMutability
      ( ..,
        Immutable,
        Mutable
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ImageTagMutability
  = ImageTagMutability'
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

pattern Immutable :: ImageTagMutability
pattern Immutable = ImageTagMutability' "IMMUTABLE"

pattern Mutable :: ImageTagMutability
pattern Mutable = ImageTagMutability' "MUTABLE"

{-# COMPLETE
  Immutable,
  Mutable,
  ImageTagMutability'
  #-}

instance FromText ImageTagMutability where
  parser = (ImageTagMutability' . mk) <$> takeText

instance ToText ImageTagMutability where
  toText (ImageTagMutability' ci) = original ci

instance Hashable ImageTagMutability

instance NFData ImageTagMutability

instance ToByteString ImageTagMutability

instance ToQuery ImageTagMutability

instance ToHeader ImageTagMutability

instance ToJSON ImageTagMutability where
  toJSON = toJSONText

instance FromJSON ImageTagMutability where
  parseJSON = parseJSONText "ImageTagMutability"
