{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECR.Types.TagStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECR.Types.TagStatus
  ( TagStatus
      ( ..,
        Any,
        Tagged,
        Untagged
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TagStatus = TagStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Any :: TagStatus
pattern Any = TagStatus' "ANY"

pattern Tagged :: TagStatus
pattern Tagged = TagStatus' "TAGGED"

pattern Untagged :: TagStatus
pattern Untagged = TagStatus' "UNTAGGED"

{-# COMPLETE
  Any,
  Tagged,
  Untagged,
  TagStatus'
  #-}

instance FromText TagStatus where
  parser = (TagStatus' . mk) <$> takeText

instance ToText TagStatus where
  toText (TagStatus' ci) = original ci

instance Hashable TagStatus

instance NFData TagStatus

instance ToByteString TagStatus

instance ToQuery TagStatus

instance ToHeader TagStatus

instance ToJSON TagStatus where
  toJSON = toJSONText
