{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.RetentionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.RetentionType
  ( RetentionType
      ( ..,
        Delete,
        Retain
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data RetentionType = RetentionType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Delete :: RetentionType
pattern Delete = RetentionType' "Delete"

pattern Retain :: RetentionType
pattern Retain = RetentionType' "Retain"

{-# COMPLETE
  Delete,
  Retain,
  RetentionType'
  #-}

instance FromText RetentionType where
  parser = (RetentionType' . mk) <$> takeText

instance ToText RetentionType where
  toText (RetentionType' ci) = original ci

instance Hashable RetentionType

instance NFData RetentionType

instance ToByteString RetentionType

instance ToQuery RetentionType

instance ToHeader RetentionType

instance ToJSON RetentionType where
  toJSON = toJSONText
