{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ListCompilationJobsSortBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ListCompilationJobsSortBy
  ( ListCompilationJobsSortBy
      ( ..,
        LCJSBCreationTime,
        LCJSBName,
        LCJSBStatus
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ListCompilationJobsSortBy
  = ListCompilationJobsSortBy'
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

pattern LCJSBCreationTime :: ListCompilationJobsSortBy
pattern LCJSBCreationTime = ListCompilationJobsSortBy' "CreationTime"

pattern LCJSBName :: ListCompilationJobsSortBy
pattern LCJSBName = ListCompilationJobsSortBy' "Name"

pattern LCJSBStatus :: ListCompilationJobsSortBy
pattern LCJSBStatus = ListCompilationJobsSortBy' "Status"

{-# COMPLETE
  LCJSBCreationTime,
  LCJSBName,
  LCJSBStatus,
  ListCompilationJobsSortBy'
  #-}

instance FromText ListCompilationJobsSortBy where
  parser = (ListCompilationJobsSortBy' . mk) <$> takeText

instance ToText ListCompilationJobsSortBy where
  toText (ListCompilationJobsSortBy' ci) = original ci

instance Hashable ListCompilationJobsSortBy

instance NFData ListCompilationJobsSortBy

instance ToByteString ListCompilationJobsSortBy

instance ToQuery ListCompilationJobsSortBy

instance ToHeader ListCompilationJobsSortBy

instance ToJSON ListCompilationJobsSortBy where
  toJSON = toJSONText
