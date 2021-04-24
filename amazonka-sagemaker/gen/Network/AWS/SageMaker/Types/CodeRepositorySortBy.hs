{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.CodeRepositorySortBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.CodeRepositorySortBy
  ( CodeRepositorySortBy
      ( ..,
        CRSBCreationTime,
        CRSBLastModifiedTime,
        CRSBName
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CodeRepositorySortBy
  = CodeRepositorySortBy'
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

pattern CRSBCreationTime :: CodeRepositorySortBy
pattern CRSBCreationTime = CodeRepositorySortBy' "CreationTime"

pattern CRSBLastModifiedTime :: CodeRepositorySortBy
pattern CRSBLastModifiedTime = CodeRepositorySortBy' "LastModifiedTime"

pattern CRSBName :: CodeRepositorySortBy
pattern CRSBName = CodeRepositorySortBy' "Name"

{-# COMPLETE
  CRSBCreationTime,
  CRSBLastModifiedTime,
  CRSBName,
  CodeRepositorySortBy'
  #-}

instance FromText CodeRepositorySortBy where
  parser = (CodeRepositorySortBy' . mk) <$> takeText

instance ToText CodeRepositorySortBy where
  toText (CodeRepositorySortBy' ci) = original ci

instance Hashable CodeRepositorySortBy

instance NFData CodeRepositorySortBy

instance ToByteString CodeRepositorySortBy

instance ToQuery CodeRepositorySortBy

instance ToHeader CodeRepositorySortBy

instance ToJSON CodeRepositorySortBy where
  toJSON = toJSONText
