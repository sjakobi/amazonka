{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticBeanstalk.Types.SourceRepository
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticBeanstalk.Types.SourceRepository
  ( SourceRepository
      ( ..,
        CodeCommit,
        S3
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SourceRepository = SourceRepository' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CodeCommit :: SourceRepository
pattern CodeCommit = SourceRepository' "CodeCommit"

pattern S3 :: SourceRepository
pattern S3 = SourceRepository' "S3"

{-# COMPLETE
  CodeCommit,
  S3,
  SourceRepository'
  #-}

instance FromText SourceRepository where
  parser = (SourceRepository' . mk) <$> takeText

instance ToText SourceRepository where
  toText (SourceRepository' ci) = original ci

instance Hashable SourceRepository

instance NFData SourceRepository

instance ToByteString SourceRepository

instance ToQuery SourceRepository

instance ToHeader SourceRepository

instance FromXML SourceRepository where
  parseXML = parseXMLText "SourceRepository"
